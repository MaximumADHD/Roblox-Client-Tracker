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
       65 LOADK                            R16 K19 ["size-full-0 auto-y col"]
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
       87 NEWTABLE                         R20 8 0
       89 LOADB                            R21 1
       90 SETTABLEKS                       R21 R20 K27 ["auto-y row gap-small items-center"]
       92 GETUPVAL                         R21 5
       93 GETTABLEKS                       R21 R21 K28 ["FoundationSheetHeaderSmallerPadding"]
       95 SETTABLEKS                       R21 R20 K29 ["size-full-1400 margin-left-small padding-y-small padding-right-medium align-y-center"]
       97 GETUPVAL                         R22 5
       98 GETTABLEKS                       R22 R22 K28 ["FoundationSheetHeaderSmallerPadding"]
      100 NOT                              R21 R22
      101 SETTABLEKS                       R21 R20 K30 ["size-full-0 margin-x-small margin-bottom-small"]
      103 GETUPVAL                         R23 5
      104 GETTABLEKS                       R23 R23 K28 ["FoundationSheetHeaderSmallerPadding"]
      106 NOT                              R22 R23
      107 AND                              R21 R22 R11
      108 SETTABLEKS                       R21 R20 K31 ["padding-top-small"]
      110 GETUPVAL                         R22 5
      111 GETTABLEKS                       R22 R22 K28 ["FoundationSheetHeaderSmallerPadding"]
      113 NOT                              R21 R22
      114 JUMPIFNOT                        R21 ; [+1]
      115 NOT                              R21 R11
      116 SETTABLEKS                       R21 R20 K32 ["margin-top-small"]
      118 SETTABLEKS                       R20 R19 K16 ["tag"]
      120 DUPTABLE                         R20 K35 [{"SubContent", "CloseAffordance"}]
      121 GETUPVAL                         R21 1
      122 GETTABLEKS                       R21 R21 K14 ["createElement"]
      124 GETUPVAL                         R22 4
      125 DUPTABLE                         R23 K26 [{"LayoutOrder", "tag"}]
      126 LOADN                            R24 1
      127 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      129 LOADK                            R24 K36 ["size-full-0 auto-y row gap-small items-center shrink"]
      130 SETTABLEKS                       R24 R23 K16 ["tag"]
      132 GETTABLEKS                       R24 R0 K37 ["children"]
      134 CALL                             R21 3 1
      135 SETTABLEKS                       R21 R20 K33 ["SubContent"]
      137 JUMPIFNOT                        R12 ; [+29]
      138 GETUPVAL                         R21 1
      139 GETTABLEKS                       R21 R21 K14 ["createElement"]
      141 GETUPVAL                         R22 6
      142 DUPTABLE                         R23 K41 [{"onActivated", "ref", "NextSelectionDown", "variant", "LayoutOrder", "testId"}]
      143 SETTABLEKS                       R7 R23 K38 ["onActivated"]
      145 SETTABLEKS                       R9 R23 K17 ["ref"]
      147 SETTABLEKS                       R10 R23 K39 ["NextSelectionDown"]
      149 GETUPVAL                         R24 7
      150 GETTABLEKS                       R24 R24 K42 ["Utility"]
      152 SETTABLEKS                       R24 R23 K40 ["variant"]
      154 LOADN                            R24 2
      155 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      157 LOADK                            R25 K43 ["%*--header--close-affordance"]
      158 MOVE                             R27 R8
      159 NAMECALL                         R25 R25 K21 ["format"]
      161 CALL                             R25 2 1
      162 MOVE                             R24 R25
      163 SETTABLEKS                       R24 R23 K5 ["testId"]
      165 CALL                             R21 2 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R21
      168 SETTABLEKS                       R21 R20 K34 ["CloseAffordance"]
      170 CALL                             R17 3 1
      171 SETTABLEKS                       R17 R16 K22 ["Content"]
      173 GETUPVAL                         R17 1
      174 GETTABLEKS                       R17 R17 K14 ["createElement"]
      176 GETUPVAL                         R18 4
      177 DUPTABLE                         R19 K46 [{"LayoutOrder", "backgroundStyle", "testId", "Size"}]
      178 LOADN                            R20 2
      179 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      181 NEWCLOSURE                       R22 P1
      182 CAPTURE                          VAL R2
      183 NAMECALL                         R20 R4 K47 ["map"]
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K44 ["backgroundStyle"]
      188 LOADK                            R21 K48 ["%*--header--bottom-border"]
      189 MOVE                             R23 R8
      190 NAMECALL                         R21 R21 K21 ["format"]
      192 CALL                             R21 2 1
      193 MOVE                             R20 R21
      194 SETTABLEKS                       R20 R19 K5 ["testId"]
      196 GETIMPORT                        R20 K51 [UDim2.new]
      198 LOADN                            R21 1
      199 LOADN                            R22 0
      200 LOADN                            R23 0
      201 GETTABLEKS                       R24 R2 K52 ["Stroke"]
      203 GETTABLEKS                       R24 R24 K53 ["Standard"]
      205 CALL                             R20 4 1
      206 SETTABLEKS                       R20 R19 K45 ["Size"]
      208 CALL                             R17 2 1
      209 SETTABLEKS                       R17 R16 K23 ["BottomBorder"]
      211 CALL                             R13 3 -1
      212 RETURN                           R13 -1

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
       41 GETTABLEKS                       R8 R0 K14 ["Utility"]
       43 GETTABLEKS                       R8 R8 K15 ["Flags"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K16 ["Components"]
       50 GETTABLEKS                       R9 R9 K17 ["CloseAffordance"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K18 ["Enums"]
       57 GETTABLEKS                       R10 R10 K19 ["CloseAffordanceVariant"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K16 ["Components"]
       64 GETTABLEKS                       R11 R11 K20 ["View"]
       66 CALL                             R10 1 1
       67 DUPCLOSURE                       R11 K21 [PROTO_3]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 GETTABLEKS                       R12 R2 K22 ["memo"]
       78 GETTABLEKS                       R13 R2 K23 ["forwardRef"]
       80 MOVE                             R14 R11
       81 CALL                             R13 1 -1
       82 CALL                             R12 -1 -1
       83 RETURN                           R12 -1
