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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Stroke"]
        6 GETTABLEKS                       R2 R2 K5 ["Default"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 LOADN                            R3 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["Color"]
       16 GETTABLEKS                       R4 R4 K4 ["Stroke"]
       18 GETTABLEKS                       R4 R4 K5 ["Default"]
       20 GETTABLEKS                       R4 R4 K1 ["Transparency"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K6 ["Size"]
       25 GETTABLEKS                       R7 R7 K7 ["Size_1200"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K1 ["innerScrollY"]
        9 GETTABLEKS                       R5 R3 K2 ["setHasHeader"]
       11 GETTABLEKS                       R6 R3 K3 ["sheetType"]
       13 GETTABLEKS                       R7 R3 K4 ["closeSheet"]
       15 GETTABLEKS                       R8 R3 K5 ["testId"]
       17 GETTABLEKS                       R9 R3 K6 ["closeAffordanceRef"]
       19 GETTABLEKS                       R10 R3 K7 ["contentStartRef"]
       21 MOVE                             R12 R4
       22 JUMPIFNOT                        R12 ; [+5]
       23 MOVE                             R12 R5
       24 JUMPIFNOT                        R12 ; [+3]
       25 MOVE                             R12 R7
       26 JUMPIFNOT                        R12 ; [+1]
       27 MOVE                             R12 R8
       28 FASTCALL2K                       ASSERT R12 K8 ; [+4]
       30 LOADK                            R13 K8 ["SheetHeader must be used within a Sheet"]
       31 GETIMPORT                        R11 K10 [assert]
       33 CALL                             R11 2 0
       34 GETUPVAL                         R12 3
       35 GETTABLEKS                       R12 R12 K11 ["Bottom"]
       37 JUMPIFEQ                         R6 R12 ; [+2]
       39 LOADB                            R11 0 +1
       40 LOADB                            R11 1
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R12 R12 K12 ["useEffect"]
       44 NEWCLOSURE                       R13 P0
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R14 0 0
       48 CALL                             R12 2 0
       49 GETTABLEKS                       R13 R0 K13 ["hasCloseAffordance"]
       51 JUMPIFNOTEQKNIL                  R13 ; [+3]
       53 NOT                              R12 R11
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R12 R0 K13 ["hasCloseAffordance"]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R13 R13 K14 ["createElement"]
       60 GETUPVAL                         R14 4
       61 DUPTABLE                         R15 K18 [{"ZIndex", "tag", "testId", "ref"}]
       62 LOADN                            R16 2
       63 SETTABLEKS                       R16 R15 K15 ["ZIndex"]
       65 LOADK                            R16 K19 ["col size-full-0 auto-y"]
       66 SETTABLEKS                       R16 R15 K16 ["tag"]
       68 LOADK                            R17 K20 ["%*--header"]
       69 MOVE                             R19 R8
       70 NAMECALL                         R17 R17 K21 ["format"]
       72 CALL                             R17 2 1
       73 MOVE                             R16 R17
       74 SETTABLEKS                       R16 R15 K5 ["testId"]
       76 SETTABLEKS                       R1 R15 K17 ["ref"]
       78 DUPTABLE                         R16 K24 [{"Content", "BottomBorder"}]
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K14 ["createElement"]
       82 GETUPVAL                         R18 4
       83 DUPTABLE                         R19 K26 [{"LayoutOrder", "tag"}]
       84 LOADN                            R20 1
       85 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
       87 LOADK                            R20 K27 ["row align-y-center items-center gap-small size-full-1400 auto-y margin-left-small padding-y-small padding-right-medium"]
       88 SETTABLEKS                       R20 R19 K16 ["tag"]
       90 DUPTABLE                         R20 K30 [{"SubContent", "CloseAffordance"}]
       91 GETUPVAL                         R21 1
       92 GETTABLEKS                       R21 R21 K14 ["createElement"]
       94 GETUPVAL                         R22 4
       95 DUPTABLE                         R23 K26 [{"LayoutOrder", "tag"}]
       96 LOADN                            R24 1
       97 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
       99 LOADK                            R24 K31 ["row items-center shrink gap-small size-full-0 auto-y"]
      100 SETTABLEKS                       R24 R23 K16 ["tag"]
      102 GETTABLEKS                       R24 R0 K32 ["children"]
      104 CALL                             R21 3 1
      105 SETTABLEKS                       R21 R20 K28 ["SubContent"]
      107 JUMPIFNOT                        R12 ; [+29]
      108 GETUPVAL                         R21 1
      109 GETTABLEKS                       R21 R21 K14 ["createElement"]
      111 GETUPVAL                         R22 5
      112 DUPTABLE                         R23 K36 [{"onActivated", "ref", "NextSelectionDown", "variant", "LayoutOrder", "testId"}]
      113 SETTABLEKS                       R7 R23 K33 ["onActivated"]
      115 SETTABLEKS                       R9 R23 K17 ["ref"]
      117 SETTABLEKS                       R10 R23 K34 ["NextSelectionDown"]
      119 GETUPVAL                         R24 6
      120 GETTABLEKS                       R24 R24 K37 ["Utility"]
      122 SETTABLEKS                       R24 R23 K35 ["variant"]
      124 LOADN                            R24 2
      125 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      127 LOADK                            R25 K38 ["%*--header--close-affordance"]
      128 MOVE                             R27 R8
      129 NAMECALL                         R25 R25 K21 ["format"]
      131 CALL                             R25 2 1
      132 MOVE                             R24 R25
      133 SETTABLEKS                       R24 R23 K5 ["testId"]
      135 CALL                             R21 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R21
      138 SETTABLEKS                       R21 R20 K29 ["CloseAffordance"]
      140 CALL                             R17 3 1
      141 SETTABLEKS                       R17 R16 K22 ["Content"]
      143 GETUPVAL                         R17 1
      144 GETTABLEKS                       R17 R17 K14 ["createElement"]
      146 GETUPVAL                         R18 4
      147 DUPTABLE                         R19 K41 [{"LayoutOrder", "backgroundStyle", "testId", "Size"}]
      148 LOADN                            R20 2
      149 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      151 NEWCLOSURE                       R22 P1
      152 CAPTURE                          VAL R2
      153 NAMECALL                         R20 R4 K42 ["map"]
      155 CALL                             R20 2 1
      156 SETTABLEKS                       R20 R19 K39 ["backgroundStyle"]
      158 LOADK                            R21 K43 ["%*--header--bottom-border"]
      159 MOVE                             R23 R8
      160 NAMECALL                         R21 R21 K21 ["format"]
      162 CALL                             R21 2 1
      163 MOVE                             R20 R21
      164 SETTABLEKS                       R20 R19 K5 ["testId"]
      166 GETIMPORT                        R20 K46 [UDim2.new]
      168 LOADN                            R21 1
      169 LOADN                            R22 0
      170 LOADN                            R23 0
      171 GETTABLEKS                       R24 R2 K47 ["Stroke"]
      173 GETTABLEKS                       R24 R24 K48 ["Standard"]
      175 CALL                             R20 4 1
      176 SETTABLEKS                       R20 R19 K40 ["Size"]
      178 CALL                             R17 2 1
      179 SETTABLEKS                       R17 R16 K23 ["BottomBorder"]
      181 CALL                             R13 3 -1
      182 RETURN                           R13 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R4 K9 ["Style"]
       20 GETTABLEKS                       R4 R4 K10 ["useTokens"]
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
       41 GETTABLEKS                       R8 R0 K14 ["Components"]
       43 GETTABLEKS                       R8 R8 K15 ["CloseAffordance"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K16 ["Enums"]
       50 GETTABLEKS                       R9 R9 K17 ["CloseAffordanceVariant"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K14 ["Components"]
       57 GETTABLEKS                       R10 R10 K18 ["View"]
       59 CALL                             R9 1 1
       60 DUPCLOSURE                       R10 K19 [PROTO_3]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 GETTABLEKS                       R11 R2 K20 ["memo"]
       70 GETTABLEKS                       R12 R2 K21 ["forwardRef"]
       72 MOVE                             R13 R10
       73 CALL                             R12 1 -1
       74 CALL                             R11 -1 -1
       75 RETURN                           R11 -1
