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
       17 MOVE                             R10 R4
       18 JUMPIFNOT                        R10 ; [+5]
       19 MOVE                             R10 R5
       20 JUMPIFNOT                        R10 ; [+3]
       21 MOVE                             R10 R7
       22 JUMPIFNOT                        R10 ; [+1]
       23 MOVE                             R10 R8
       24 FASTCALL2K                       ASSERT R10 K6 ; [+4]
       26 LOADK                            R11 K6 ["SheetHeader must be used within a Sheet"]
       27 GETIMPORT                        R9 K8 [assert]
       29 CALL                             R9 2 0
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R10 R10 K9 ["Bottom"]
       33 JUMPIFEQ                         R6 R10 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K10 ["useEffect"]
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          VAL R5
       42 NEWTABLE                         R12 0 0
       44 CALL                             R10 2 0
       45 GETTABLEKS                       R11 R0 K11 ["hasCloseAffordance"]
       47 JUMPIFNOTEQKNIL                  R11 ; [+3]
       49 NOT                              R10 R9
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R10 R0 K11 ["hasCloseAffordance"]
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K12 ["createElement"]
       56 GETUPVAL                         R12 4
       57 DUPTABLE                         R13 K16 [{"ZIndex", "tag", "testId", "ref"}]
       58 LOADN                            R14 2
       59 SETTABLEKS                       R14 R13 K13 ["ZIndex"]
       61 LOADK                            R14 K17 ["size-full-0 auto-y col"]
       62 SETTABLEKS                       R14 R13 K14 ["tag"]
       64 LOADK                            R15 K18 ["%*--header"]
       65 MOVE                             R17 R8
       66 NAMECALL                         R15 R15 K19 ["format"]
       68 CALL                             R15 2 1
       69 MOVE                             R14 R15
       70 SETTABLEKS                       R14 R13 K5 ["testId"]
       72 SETTABLEKS                       R1 R13 K15 ["ref"]
       74 DUPTABLE                         R14 K22 [{"Content", "BottomBorder"}]
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R15 R15 K12 ["createElement"]
       78 GETUPVAL                         R16 4
       79 DUPTABLE                         R17 K24 [{"LayoutOrder", "tag"}]
       80 LOADN                            R18 1
       81 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
       83 NEWTABLE                         R18 8 0
       85 LOADB                            R19 1
       86 SETTABLEKS                       R19 R18 K25 ["auto-y row gap-small items-center"]
       88 GETUPVAL                         R19 5
       89 GETTABLEKS                       R19 R19 K26 ["FoundationSheetHeaderSmallerPadding"]
       91 SETTABLEKS                       R19 R18 K27 ["size-full-1400 margin-left-small padding-y-small padding-right-medium align-y-center"]
       93 GETUPVAL                         R20 5
       94 GETTABLEKS                       R20 R20 K26 ["FoundationSheetHeaderSmallerPadding"]
       96 NOT                              R19 R20
       97 SETTABLEKS                       R19 R18 K28 ["size-full-0 margin-x-small margin-bottom-small"]
       99 GETUPVAL                         R21 5
      100 GETTABLEKS                       R21 R21 K26 ["FoundationSheetHeaderSmallerPadding"]
      102 NOT                              R20 R21
      103 AND                              R19 R20 R9
      104 SETTABLEKS                       R19 R18 K29 ["padding-top-small"]
      106 GETUPVAL                         R20 5
      107 GETTABLEKS                       R20 R20 K26 ["FoundationSheetHeaderSmallerPadding"]
      109 NOT                              R19 R20
      110 JUMPIFNOT                        R19 ; [+1]
      111 NOT                              R19 R9
      112 SETTABLEKS                       R19 R18 K30 ["margin-top-small"]
      114 SETTABLEKS                       R18 R17 K14 ["tag"]
      116 DUPTABLE                         R18 K33 [{"SubContent", "CloseAffordance"}]
      117 GETUPVAL                         R19 1
      118 GETTABLEKS                       R19 R19 K12 ["createElement"]
      120 GETUPVAL                         R20 4
      121 DUPTABLE                         R21 K24 [{"LayoutOrder", "tag"}]
      122 LOADN                            R22 1
      123 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      125 LOADK                            R22 K34 ["size-full-0 auto-y row gap-small items-center shrink"]
      126 SETTABLEKS                       R22 R21 K14 ["tag"]
      128 GETTABLEKS                       R22 R0 K35 ["children"]
      130 CALL                             R19 3 1
      131 SETTABLEKS                       R19 R18 K31 ["SubContent"]
      133 JUMPIFNOT                        R10 ; [+25]
      134 GETUPVAL                         R19 1
      135 GETTABLEKS                       R19 R19 K12 ["createElement"]
      137 GETUPVAL                         R20 6
      138 DUPTABLE                         R21 K38 [{"onActivated", "variant", "LayoutOrder", "testId"}]
      139 SETTABLEKS                       R7 R21 K36 ["onActivated"]
      141 GETUPVAL                         R22 7
      142 GETTABLEKS                       R22 R22 K39 ["Utility"]
      144 SETTABLEKS                       R22 R21 K37 ["variant"]
      146 LOADN                            R22 2
      147 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      149 LOADK                            R23 K40 ["%*--header--close-affordance"]
      150 MOVE                             R25 R8
      151 NAMECALL                         R23 R23 K19 ["format"]
      153 CALL                             R23 2 1
      154 MOVE                             R22 R23
      155 SETTABLEKS                       R22 R21 K5 ["testId"]
      157 CALL                             R19 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R19
      160 SETTABLEKS                       R19 R18 K32 ["CloseAffordance"]
      162 CALL                             R15 3 1
      163 SETTABLEKS                       R15 R14 K20 ["Content"]
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K12 ["createElement"]
      168 GETUPVAL                         R16 4
      169 DUPTABLE                         R17 K43 [{"LayoutOrder", "backgroundStyle", "testId", "Size"}]
      170 LOADN                            R18 2
      171 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      173 NEWCLOSURE                       R20 P1
      174 CAPTURE                          VAL R2
      175 NAMECALL                         R18 R4 K44 ["map"]
      177 CALL                             R18 2 1
      178 SETTABLEKS                       R18 R17 K41 ["backgroundStyle"]
      180 LOADK                            R19 K45 ["%*--header--bottom-border"]
      181 MOVE                             R21 R8
      182 NAMECALL                         R19 R19 K19 ["format"]
      184 CALL                             R19 2 1
      185 MOVE                             R18 R19
      186 SETTABLEKS                       R18 R17 K5 ["testId"]
      188 GETIMPORT                        R18 K48 [UDim2.new]
      190 LOADN                            R19 1
      191 LOADN                            R20 0
      192 LOADN                            R21 0
      193 GETTABLEKS                       R22 R2 K49 ["Stroke"]
      195 GETTABLEKS                       R22 R22 K50 ["Standard"]
      197 CALL                             R18 4 1
      198 SETTABLEKS                       R18 R17 K42 ["Size"]
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K21 ["BottomBorder"]
      203 CALL                             R11 3 -1
      204 RETURN                           R11 -1

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
