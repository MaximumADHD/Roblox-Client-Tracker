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
       57 DUPTABLE                         R13 K18 [{["ZIndex"] = 2, ["tag"] = "size-full-0 auto-y col", ["testId"], ["ref"]}]
       58 LOADK                            R15 K19 ["%*--header"]
       59 MOVE                             R17 R8
       60 NAMECALL                         R15 R15 K20 ["format"]
       62 CALL                             R15 2 1
       63 MOVE                             R14 R15
       64 SETTABLEKS                       R14 R13 K5 ["testId"]
       66 SETTABLEKS                       R1 R13 K17 ["ref"]
       68 DUPTABLE                         R14 K23 [{"Content", "BottomBorder"}]
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R15 R15 K12 ["createElement"]
       72 GETUPVAL                         R16 4
       73 DUPTABLE                         R17 K26 [{["LayoutOrder"] = 1, ["tag"]}]
       74 NEWTABLE                         R18 4 0
       76 LOADB                            R19 1
       77 SETTABLEKS                       R19 R18 K27 ["size-full-0 auto-y row gap-small items-center margin-x-small margin-bottom-small"]
       79 SETTABLEKS                       R9 R18 K28 ["padding-top-small"]
       81 NOT                              R19 R9
       82 SETTABLEKS                       R19 R18 K29 ["margin-top-small"]
       84 SETTABLEKS                       R18 R17 K15 ["tag"]
       86 DUPTABLE                         R18 K32 [{"SubContent", "CloseAffordance"}]
       87 GETUPVAL                         R19 1
       88 GETTABLEKS                       R19 R19 K12 ["createElement"]
       90 GETUPVAL                         R20 4
       91 DUPTABLE                         R21 K34 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y row gap-small items-center shrink"}]
       92 GETTABLEKS                       R22 R0 K35 ["children"]
       94 CALL                             R19 3 1
       95 SETTABLEKS                       R19 R18 K30 ["SubContent"]
       97 JUMPIFNOT                        R10 ; [+22]
       98 GETUPVAL                         R19 1
       99 GETTABLEKS                       R19 R19 K12 ["createElement"]
      101 GETUPVAL                         R20 5
      102 DUPTABLE                         R21 K38 [{["onActivated"], ["variant"], ["LayoutOrder"] = 2, ["testId"]}]
      103 SETTABLEKS                       R7 R21 K36 ["onActivated"]
      105 GETUPVAL                         R22 6
      106 GETTABLEKS                       R22 R22 K39 ["Utility"]
      108 SETTABLEKS                       R22 R21 K37 ["variant"]
      110 LOADK                            R23 K40 ["%*--header--close-affordance"]
      111 MOVE                             R25 R8
      112 NAMECALL                         R23 R23 K20 ["format"]
      114 CALL                             R23 2 1
      115 MOVE                             R22 R23
      116 SETTABLEKS                       R22 R21 K5 ["testId"]
      118 CALL                             R19 2 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R19
      121 SETTABLEKS                       R19 R18 K31 ["CloseAffordance"]
      123 CALL                             R15 3 1
      124 SETTABLEKS                       R15 R14 K21 ["Content"]
      126 GETUPVAL                         R15 1
      127 GETTABLEKS                       R15 R15 K12 ["createElement"]
      129 GETUPVAL                         R16 4
      130 DUPTABLE                         R17 K43 [{["LayoutOrder"] = 2, ["backgroundStyle"], ["testId"], ["Size"]}]
      131 NEWCLOSURE                       R20 P1
      132 CAPTURE                          VAL R2
      133 NAMECALL                         R18 R4 K44 ["map"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K41 ["backgroundStyle"]
      138 LOADK                            R19 K45 ["%*--header--bottom-border"]
      139 MOVE                             R21 R8
      140 NAMECALL                         R19 R19 K20 ["format"]
      142 CALL                             R19 2 1
      143 MOVE                             R18 R19
      144 SETTABLEKS                       R18 R17 K5 ["testId"]
      146 GETIMPORT                        R18 K48 [UDim2.new]
      148 LOADN                            R19 1
      149 LOADN                            R20 0
      150 LOADN                            R21 0
      151 GETTABLEKS                       R22 R2 K49 ["Stroke"]
      153 GETTABLEKS                       R22 R22 K50 ["Standard"]
      155 CALL                             R18 4 1
      156 SETTABLEKS                       R18 R17 K42 ["Size"]
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K22 ["BottomBorder"]
      161 CALL                             R11 3 -1
      162 RETURN                           R11 -1

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
       43 GETTABLEKS                       R8 R8 K15 ["View"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Components"]
       50 GETTABLEKS                       R9 R9 K16 ["CloseAffordance"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K17 ["Enums"]
       57 GETTABLEKS                       R10 R10 K18 ["CloseAffordanceVariant"]
       59 CALL                             R9 1 1
       60 DUPCLOSURE                       R10 K19 [PROTO_3]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 GETTABLEKS                       R11 R2 K20 ["memo"]
       70 GETTABLEKS                       R12 R2 K21 ["forwardRef"]
       72 MOVE                             R13 R10
       73 CALL                             R12 1 -1
       74 CALL                             R11 -1 -1
       75 RETURN                           R11 -1
