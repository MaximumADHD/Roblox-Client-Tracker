PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K3 ["Color"]
        4 GETTABLEKS                       R4 R5 K4 ["Stroke"]
        6 GETTABLEKS                       R3 R4 K5 ["Default"]
        8 GETTABLEKS                       R2 R3 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 LOADN                            R3 1
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K3 ["Color"]
       16 GETTABLEKS                       R6 R7 K4 ["Stroke"]
       18 GETTABLEKS                       R5 R6 K5 ["Default"]
       20 GETTABLEKS                       R4 R5 K1 ["Transparency"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K6 ["Size"]
       25 GETTABLEKS                       R7 R8 K7 ["Size_1200"]
       27 DIV                              R6 R0 R7
       28 LOADN                            R7 0
       29 LOADN                            R8 1
       30 FASTCALL                         MATH_CLAMP ; [+2]
       31 GETIMPORT                        R5 K10 [math.clamp]
       33 CALL                             R5 3 1
       34 FASTCALL                         MATH_LERP ; [+2]
       35 GETIMPORT                        R2 K12 [math.lerp]
       37 CALL                             R2 3 1
       38 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       40 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K1 ["innerScrollY"]
        9 GETTABLEKS                       R5 R3 K2 ["setHasHeader"]
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R7 R8 K3 ["FoundationSheetFullBleed"]
       14 JUMPIFNOT                        R7 ; [+3]
       15 GETTABLEKS                       R6 R3 K4 ["hasFullBleed"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R6
       19 GETTABLEKS                       R7 R3 K5 ["sheetType"]
       21 GETTABLEKS                       R8 R3 K6 ["closeSheet"]
       23 GETTABLEKS                       R9 R3 K7 ["testId"]
       25 GETTABLEKS                       R10 R3 K8 ["closeAffordanceRef"]
       27 GETTABLEKS                       R11 R3 K9 ["contentStartRef"]
       29 MOVE                             R13 R4
       30 JUMPIFNOT                        R13 ; [+5]
       31 MOVE                             R13 R5
       32 JUMPIFNOT                        R13 ; [+3]
       33 MOVE                             R13 R8
       34 JUMPIFNOT                        R13 ; [+1]
       35 MOVE                             R13 R9
       36 FASTCALL2K                       ASSERT R13 K10 ; [+4]
       38 LOADK                            R14 K10 ["SheetHeader must be used within a Sheet"]
       39 GETIMPORT                        R12 K12 [assert]
       41 CALL                             R12 2 0
       42 GETUPVAL                         R14 4
       43 GETTABLEKS                       R13 R14 K13 ["Bottom"]
       45 JUMPIFEQ                         R7 R13 ; [+2]
       47 LOADB                            R12 0 +1
       48 LOADB                            R12 1
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R13 R14 K14 ["useEffect"]
       52 NEWCLOSURE                       R14 P0
       53 CAPTURE                          VAL R5
       54 NEWTABLE                         R15 0 0
       56 CALL                             R13 2 0
       57 GETTABLEKS                       R14 R0 K15 ["hasCloseAffordance"]
       59 JUMPIFNOTEQKNIL                  R14 ; [+3]
       61 NOT                              R13 R12
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R13 R0 K15 ["hasCloseAffordance"]
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R14 R15 K16 ["createElement"]
       68 GETUPVAL                         R15 5
       69 DUPTABLE                         R16 K20 [{"ZIndex", "tag", "testId", "ref"}]
       70 LOADN                            R17 2
       71 SETTABLEKS                       R17 R16 K17 ["ZIndex"]
       73 LOADK                            R17 K21 ["col size-full-0 auto-y"]
       74 SETTABLEKS                       R17 R16 K18 ["tag"]
       76 LOADK                            R18 K22 ["%*--header"]
       77 MOVE                             R20 R9
       78 NAMECALL                         R18 R18 K23 ["format"]
       80 CALL                             R18 2 1
       81 MOVE                             R17 R18
       82 SETTABLEKS                       R17 R16 K7 ["testId"]
       84 SETTABLEKS                       R1 R16 K19 ["ref"]
       86 DUPTABLE                         R17 K26 [{"Content", "BottomBorder"}]
       87 GETUPVAL                         R19 1
       88 GETTABLEKS                       R18 R19 K16 ["createElement"]
       90 GETUPVAL                         R19 5
       91 DUPTABLE                         R20 K28 [{"LayoutOrder", "tag"}]
       92 LOADN                            R21 1
       93 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
       95 LOADK                            R21 K29 ["row align-y-center items-center gap-small size-full-1400 auto-y margin-left-small padding-y-small padding-right-medium"]
       96 SETTABLEKS                       R21 R20 K18 ["tag"]
       98 DUPTABLE                         R21 K32 [{"SubContent", "CloseAffordance"}]
       99 GETUPVAL                         R23 1
      100 GETTABLEKS                       R22 R23 K16 ["createElement"]
      102 GETUPVAL                         R23 5
      103 DUPTABLE                         R24 K28 [{"LayoutOrder", "tag"}]
      104 LOADN                            R25 1
      105 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      107 LOADK                            R25 K33 ["row items-center shrink gap-small size-full-0 auto-y"]
      108 SETTABLEKS                       R25 R24 K18 ["tag"]
      110 GETTABLEKS                       R25 R0 K34 ["children"]
      112 CALL                             R22 3 1
      113 SETTABLEKS                       R22 R21 K30 ["SubContent"]
      115 JUMPIFNOT                        R13 ; [+38]
      116 GETUPVAL                         R23 1
      117 GETTABLEKS                       R22 R23 K16 ["createElement"]
      119 GETUPVAL                         R23 6
      120 DUPTABLE                         R24 K38 [{"onActivated", "ref", "NextSelectionDown", "variant", "LayoutOrder", "testId"}]
      121 SETTABLEKS                       R8 R24 K35 ["onActivated"]
      123 SETTABLEKS                       R10 R24 K19 ["ref"]
      125 SETTABLEKS                       R11 R24 K36 ["NextSelectionDown"]
      127 GETUPVAL                         R27 3
      128 GETTABLEKS                       R26 R27 K3 ["FoundationSheetFullBleed"]
      130 JUMPIFNOT                        R26 ; [+5]
      131 JUMPIFNOT                        R6 ; [+4]
      132 GETUPVAL                         R26 7
      133 GETTABLEKS                       R25 R26 K39 ["OverMedia"]
      135 JUMP                             ; [+3]
      136 GETUPVAL                         R26 7
      137 GETTABLEKS                       R25 R26 K40 ["Utility"]
      139 SETTABLEKS                       R25 R24 K37 ["variant"]
      141 LOADN                            R25 2
      142 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
      144 LOADK                            R26 K41 ["%*--header--close-affordance"]
      145 MOVE                             R28 R9
      146 NAMECALL                         R26 R26 K23 ["format"]
      148 CALL                             R26 2 1
      149 MOVE                             R25 R26
      150 SETTABLEKS                       R25 R24 K7 ["testId"]
      152 CALL                             R22 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R22
      155 SETTABLEKS                       R22 R21 K31 ["CloseAffordance"]
      157 CALL                             R18 3 1
      158 SETTABLEKS                       R18 R17 K24 ["Content"]
      160 GETUPVAL                         R19 1
      161 GETTABLEKS                       R18 R19 K16 ["createElement"]
      163 GETUPVAL                         R19 5
      164 DUPTABLE                         R20 K44 [{"LayoutOrder", "backgroundStyle", "testId", "Size"}]
      165 LOADN                            R21 2
      166 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      168 NEWCLOSURE                       R23 P1
      169 CAPTURE                          VAL R2
      170 NAMECALL                         R21 R4 K45 ["map"]
      172 CALL                             R21 2 1
      173 SETTABLEKS                       R21 R20 K42 ["backgroundStyle"]
      175 LOADK                            R22 K46 ["%*--header--bottom-border"]
      176 MOVE                             R24 R9
      177 NAMECALL                         R22 R22 K23 ["format"]
      179 CALL                             R22 2 1
      180 MOVE                             R21 R22
      181 SETTABLEKS                       R21 R20 K7 ["testId"]
      183 GETIMPORT                        R21 K49 [UDim2.new]
      185 LOADN                            R22 1
      186 LOADN                            R23 0
      187 LOADN                            R24 0
      188 GETTABLEKS                       R26 R2 K50 ["Stroke"]
      190 GETTABLEKS                       R25 R26 K51 ["Standard"]
      192 CALL                             R21 4 1
      193 SETTABLEKS                       R21 R20 K43 ["Size"]
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K25 ["BottomBorder"]
      198 CALL                             R14 3 -1
      199 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["Style"]
       20 GETTABLEKS                       R4 R5 K10 ["useTokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K1 [script]
       25 LOADK                            R6 K11 ["Sheet"]
       26 NAMECALL                         R4 R4 K3 ["FindFirstAncestor"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R4 K12 ["SheetContext"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R4 K13 ["SheetType"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R0 K14 ["Components"]
       43 GETTABLEKS                       R8 R9 K15 ["CloseAffordance"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R10 R0 K16 ["Enums"]
       50 GETTABLEKS                       R9 R10 K17 ["CloseAffordanceVariant"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R11 R0 K14 ["Components"]
       57 GETTABLEKS                       R10 R11 K18 ["View"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K19 ["Utility"]
       64 GETTABLEKS                       R11 R12 K20 ["Flags"]
       66 CALL                             R10 1 1
       67 DUPCLOSURE                       R11 K21 [PROTO_3]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 GETTABLEKS                       R12 R2 K22 ["memo"]
       78 GETTABLEKS                       R13 R2 K23 ["forwardRef"]
       80 MOVE                             R14 R11
       81 CALL                             R13 1 -1
       82 CALL                             R12 -1 -1
       83 RETURN                           R12 -1
