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
       61 DUPTABLE                         R15 K20 [{["ZIndex"] = 2, ["tag"] = "size-full-0 auto-y col", ["testId"], ["ref"]}]
       62 LOADK                            R17 K21 ["%*--header"]
       63 MOVE                             R19 R8
       64 NAMECALL                         R17 R17 K22 ["format"]
       66 CALL                             R17 2 1
       67 MOVE                             R16 R17
       68 SETTABLEKS                       R16 R15 K5 ["testId"]
       70 SETTABLEKS                       R1 R15 K19 ["ref"]
       72 DUPTABLE                         R16 K25 [{"Content", "BottomBorder"}]
       73 GETUPVAL                         R17 1
       74 GETTABLEKS                       R17 R17 K14 ["createElement"]
       76 GETUPVAL                         R18 4
       77 DUPTABLE                         R19 K28 [{["LayoutOrder"] = 1, ["tag"]}]
       78 NEWTABLE                         R20 8 0
       80 LOADB                            R21 1
       81 SETTABLEKS                       R21 R20 K29 ["auto-y row gap-small items-center"]
       83 GETUPVAL                         R21 5
       84 GETTABLEKS                       R21 R21 K30 ["FoundationSheetHeaderSmallerPadding"]
       86 SETTABLEKS                       R21 R20 K31 ["size-full-1400 margin-left-small padding-y-small padding-right-medium align-y-center"]
       88 GETUPVAL                         R22 5
       89 GETTABLEKS                       R22 R22 K30 ["FoundationSheetHeaderSmallerPadding"]
       91 NOT                              R21 R22
       92 SETTABLEKS                       R21 R20 K32 ["size-full-0 margin-x-small margin-bottom-small"]
       94 GETUPVAL                         R23 5
       95 GETTABLEKS                       R23 R23 K30 ["FoundationSheetHeaderSmallerPadding"]
       97 NOT                              R22 R23
       98 AND                              R21 R22 R11
       99 SETTABLEKS                       R21 R20 K33 ["padding-top-small"]
      101 GETUPVAL                         R22 5
      102 GETTABLEKS                       R22 R22 K30 ["FoundationSheetHeaderSmallerPadding"]
      104 NOT                              R21 R22
      105 JUMPIFNOT                        R21 ; [+1]
      106 NOT                              R21 R11
      107 SETTABLEKS                       R21 R20 K34 ["margin-top-small"]
      109 SETTABLEKS                       R20 R19 K17 ["tag"]
      111 DUPTABLE                         R20 K37 [{"SubContent", "CloseAffordance"}]
      112 GETUPVAL                         R21 1
      113 GETTABLEKS                       R21 R21 K14 ["createElement"]
      115 GETUPVAL                         R22 4
      116 DUPTABLE                         R23 K39 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y row gap-small items-center shrink"}]
      117 GETTABLEKS                       R24 R0 K40 ["children"]
      119 CALL                             R21 3 1
      120 SETTABLEKS                       R21 R20 K35 ["SubContent"]
      122 JUMPIFNOT                        R12 ; [+26]
      123 GETUPVAL                         R21 1
      124 GETTABLEKS                       R21 R21 K14 ["createElement"]
      126 GETUPVAL                         R22 6
      127 DUPTABLE                         R23 K44 [{["onActivated"], ["ref"], ["NextSelectionDown"], ["variant"], ["LayoutOrder"] = 2, ["testId"]}]
      128 SETTABLEKS                       R7 R23 K41 ["onActivated"]
      130 SETTABLEKS                       R9 R23 K19 ["ref"]
      132 SETTABLEKS                       R10 R23 K42 ["NextSelectionDown"]
      134 GETUPVAL                         R24 7
      135 GETTABLEKS                       R24 R24 K45 ["Utility"]
      137 SETTABLEKS                       R24 R23 K43 ["variant"]
      139 LOADK                            R25 K46 ["%*--header--close-affordance"]
      140 MOVE                             R27 R8
      141 NAMECALL                         R25 R25 K22 ["format"]
      143 CALL                             R25 2 1
      144 MOVE                             R24 R25
      145 SETTABLEKS                       R24 R23 K5 ["testId"]
      147 CALL                             R21 2 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R21
      150 SETTABLEKS                       R21 R20 K36 ["CloseAffordance"]
      152 CALL                             R17 3 1
      153 SETTABLEKS                       R17 R16 K23 ["Content"]
      155 GETUPVAL                         R17 1
      156 GETTABLEKS                       R17 R17 K14 ["createElement"]
      158 GETUPVAL                         R18 4
      159 DUPTABLE                         R19 K49 [{["LayoutOrder"] = 2, ["backgroundStyle"], ["testId"], ["Size"]}]
      160 NEWCLOSURE                       R22 P1
      161 CAPTURE                          VAL R2
      162 NAMECALL                         R20 R4 K50 ["map"]
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K47 ["backgroundStyle"]
      167 LOADK                            R21 K51 ["%*--header--bottom-border"]
      168 MOVE                             R23 R8
      169 NAMECALL                         R21 R21 K22 ["format"]
      171 CALL                             R21 2 1
      172 MOVE                             R20 R21
      173 SETTABLEKS                       R20 R19 K5 ["testId"]
      175 GETIMPORT                        R20 K54 [UDim2.new]
      177 LOADN                            R21 1
      178 LOADN                            R22 0
      179 LOADN                            R23 0
      180 GETTABLEKS                       R24 R2 K55 ["Stroke"]
      182 GETTABLEKS                       R24 R24 K56 ["Standard"]
      184 CALL                             R20 4 1
      185 SETTABLEKS                       R20 R19 K48 ["Size"]
      187 CALL                             R17 2 1
      188 SETTABLEKS                       R17 R16 K24 ["BottomBorder"]
      190 CALL                             R13 3 -1
      191 RETURN                           R13 -1

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
