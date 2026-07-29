PROTO_0:
        0 LOADN                            R1 1140
        1 JUMPIFNOTLE                      R1 R0 ; [+3]
        3 LOADN                            R1 880
        4 RETURN                           R1 1
        5 LOADN                            R1 850
        6 JUMPIFNOTLE                      R0 R1 ; [+3]
        8 LOADN                            R1 720
        9 RETURN                           R1 1
       10 SUBK                             R2 R0 K1 [850]
       11 DIVK                             R1 R2 K0 [290]
       12 MULK                             R3 R1 K3 [160]
       13 ADDK                             R2 R3 K2 [720]
       14 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R1 600
        1 JUMPIFNOTLT                      R0 R1 ; [+3]
        3 LOADN                            R1 500
        4 RETURN                           R1 1
        5 LOADN                            R1 849
        6 JUMPIFNOTLE                      R1 R0 ; [+3]
        8 LOADN                            R1 560
        9 RETURN                           R1 1
       10 SUBK                             R4 R0 K3 [600]
       11 MULK                             R3 R4 K2 [60]
       12 DIVK                             R2 R3 K1 [249]
       13 ADDK                             R1 R2 K0 [500]
       14 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R1 850
        1 JUMPIFNOTLE                      R1 R0 ; [+16]
        3 LOADN                            R2 1140
        4 JUMPIFNOTLE                      R2 R0 ; [+3]
        6 LOADN                            R1 880
        7 RETURN                           R1 1
        8 LOADN                            R2 850
        9 JUMPIFNOTLE                      R0 R2 ; [+3]
       11 LOADN                            R1 720
       12 RETURN                           R1 1
       13 SUBK                             R3 R0 K1 [850]
       14 DIVK                             R2 R3 K0 [290]
       15 MULK                             R3 R2 K3 [160]
       16 ADDK                             R1 R3 K2 [720]
       17 RETURN                           R1 1
       18 LOADN                            R2 600
       19 JUMPIFNOTLT                      R0 R2 ; [+3]
       21 LOADN                            R1 500
       22 RETURN                           R1 1
       23 LOADN                            R2 849
       24 JUMPIFNOTLE                      R2 R0 ; [+3]
       26 LOADN                            R1 560
       27 RETURN                           R1 1
       28 SUBK                             R4 R0 K7 [600]
       29 MULK                             R3 R4 K6 [60]
       30 DIVK                             R2 R3 K5 [249]
       31 ADDK                             R1 R2 K4 [500]
       32 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K1 ["BeginLoginPageFlowAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K1 ["CreateQuickSignInAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Code"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["PrivateKey"]
        9 NAMECALL                         R0 R0 K3 ["AwaitQuickSignInAsync"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K1 ["RestartAutomaticLoginWithNewCookieAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+169]
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+2]
        8 MOVE                             R2 R1
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K2 [""]
       11 GETIMPORT                        R3 K1 [pcall]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U1
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 0
       17 JUMPIFNOT                        R5 ; [+1]
       18 RETURN                           R0 0
       19 JUMPIF                           R3 ; [+18]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K3 ["reportCodeCreatedFailed"]
       23 MOVE                             R6 R2
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R8 R4
       26 GETIMPORT                        R7 K5 [tostring]
       28 CALL                             R7 1 1
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 3
       31 FASTCALL1                        TOSTRING R4 ; [+3]
       32 MOVE                             R7 R4
       33 GETIMPORT                        R6 K5 [tostring]
       35 CALL                             R6 1 1
       36 CALL                             R5 1 0
       37 RETURN                           R0 0
       38 JUMPIFNOT                        R4 ; [+13]
       39 GETTABLEKS                       R5 R4 K6 ["Code"]
       41 JUMPIFNOT                        R5 ; [+10]
       42 GETTABLEKS                       R5 R4 K6 ["Code"]
       44 JUMPIFEQKS                       R5 K2 [""] ; [+7]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K7 ["reportCodeCreatedSuccess"]
       49 MOVE                             R6 R2
       50 CALL                             R5 1 0
       51 JUMP                             ; [+5]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K3 ["reportCodeCreatedFailed"]
       55 MOVE                             R6 R2
       56 CALL                             R5 1 0
       57 GETUPVAL                         R5 4
       58 MOVE                             R6 R4
       59 CALL                             R5 1 0
       60 GETIMPORT                        R5 K1 [pcall]
       62 NEWCLOSURE                       R6 P2
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R4
       65 CALL                             R5 1 2
       66 GETUPVAL                         R7 0
       67 JUMPIFNOT                        R7 ; [+1]
       68 RETURN                           R0 0
       69 JUMPIF                           R5 ; [+20]
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R7 R7 K8 ["reportAwaitResultErrored"]
       73 MOVE                             R8 R2
       74 FASTCALL1                        TOSTRING R6 ; [+3]
       75 MOVE                             R10 R6
       76 GETIMPORT                        R9 K5 [tostring]
       78 CALL                             R9 1 1
       79 CALL                             R7 2 0
       80 GETUPVAL                         R7 3
       81 LOADK                            R9 K9 ["Quick sign-in failed: "]
       82 FASTCALL1                        TOSTRING R6 ; [+3]
       83 MOVE                             R11 R6
       84 GETIMPORT                        R10 K5 [tostring]
       86 CALL                             R10 1 1
       87 CONCAT                           R8 R9 R10
       88 CALL                             R7 1 0
       89 RETURN                           R0 0
       90 GETTABLEKS                       R7 R6 K10 ["resultType"]
       92 JUMPIFNOTEQKS                    R7 K11 ["Validated"] ; [+39]
       94 GETUPVAL                         R8 2
       95 GETTABLEKS                       R8 R8 K12 ["reportAwaitResultValidated"]
       97 MOVE                             R9 R2
       98 CALL                             R8 1 0
       99 GETIMPORT                        R8 K1 [pcall]
      101 NEWCLOSURE                       R9 P3
      102 CAPTURE                          UPVAL U1
      103 CALL                             R8 1 2
      104 JUMPIFNOT                        R8 ; [+6]
      105 GETUPVAL                         R10 2
      106 GETTABLEKS                       R10 R10 K13 ["reportRestartSucceeded"]
      108 MOVE                             R11 R2
      109 CALL                             R10 1 0
      110 RETURN                           R0 0
      111 GETUPVAL                         R10 2
      112 GETTABLEKS                       R10 R10 K14 ["reportRestartFailed"]
      114 MOVE                             R11 R2
      115 FASTCALL1                        TOSTRING R9 ; [+3]
      116 MOVE                             R13 R9
      117 GETIMPORT                        R12 K5 [tostring]
      119 CALL                             R12 1 1
      120 CALL                             R10 2 0
      121 GETIMPORT                        R10 K16 [print]
      123 LOADK                            R12 K17 ["[LoginPage] RestartAutomaticLoginWithNewCookieAsync failed: "]
      124 FASTCALL1                        TOSTRING R9 ; [+3]
      125 MOVE                             R14 R9
      126 GETIMPORT                        R13 K5 [tostring]
      128 CALL                             R13 1 1
      129 CONCAT                           R11 R12 R13
      130 CALL                             R10 1 0
      131 RETURN                           R0 0
      132 JUMPIFNOTEQKS                    R7 K18 ["Cancelled"] ; [+7]
      134 GETUPVAL                         R8 2
      135 GETTABLEKS                       R8 R8 K19 ["reportAwaitResultCancelled"]
      137 MOVE                             R9 R2
      138 CALL                             R8 1 0
      139 JUMP                             ; [+30]
      140 JUMPIFNOTEQKS                    R7 K20 ["Expired"] ; [+7]
      142 GETUPVAL                         R8 2
      143 GETTABLEKS                       R8 R8 K21 ["reportAwaitResultExpired"]
      145 MOVE                             R9 R2
      146 CALL                             R8 1 0
      147 JUMP                             ; [+22]
      148 GETUPVAL                         R8 2
      149 GETTABLEKS                       R8 R8 K8 ["reportAwaitResultErrored"]
      151 MOVE                             R9 R2
      152 LOADK                            R11 K22 ["unexpected resultType: "]
      153 FASTCALL1                        TOSTRING R7 ; [+3]
      154 MOVE                             R13 R7
      155 GETIMPORT                        R12 K5 [tostring]
      157 CALL                             R12 1 1
      158 CONCAT                           R10 R11 R12
      159 CALL                             R8 2 0
      160 GETUPVAL                         R8 3
      161 LOADK                            R10 K23 ["Quick sign-in ended: "]
      162 FASTCALL1                        TOSTRING R7 ; [+3]
      163 MOVE                             R12 R7
      164 GETIMPORT                        R11 K5 [tostring]
      166 CALL                             R11 1 1
      167 CONCAT                           R9 R10 R11
      168 CALL                             R8 1 0
      169 RETURN                           R0 0
      170 JUMPBACK                         ; [-171]
      171 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 0
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 0
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          REF R0
       12 CLOSEUPVALS                      R0
       13 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R2 R2 K0 ["Disconnect"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 0
        4 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        6 RETURN                           R0 0
        7 LOADNIL                          R0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["ImageImportedSignal"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          REF R0
       15 NAMECALL                         R1 R1 K2 ["Connect"]
       17 CALL                             R1 2 1
       18 MOVE                             R0 R1
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R3 0
       21 NAMECALL                         R1 R1 K3 ["generateTempUrlInContentProvider"]
       23 CALL                             R1 2 0
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          REF R0
       26 CLOSEUPVALS                      R0
       27 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 LOADN                            R4 850
        9 JUMPIFNOTLE                      R4 R1 ; [+16]
       11 LOADN                            R4 1140
       12 JUMPIFNOTLE                      R4 R1 ; [+3]
       14 LOADN                            R3 880
       15 JUMP                             ; [+24]
       16 LOADN                            R4 850
       17 JUMPIFNOTLE                      R1 R4 ; [+3]
       19 LOADN                            R3 720
       20 JUMP                             ; [+19]
       21 SUBK                             R5 R1 K3 [850]
       22 DIVK                             R4 R5 K2 [290]
       23 MULK                             R5 R4 K5 [160]
       24 ADDK                             R3 R5 K4 [720]
       25 JUMP                             ; [+14]
       26 LOADN                            R4 600
       27 JUMPIFNOTLT                      R1 R4 ; [+3]
       29 LOADN                            R3 500
       30 JUMP                             ; [+9]
       31 LOADN                            R4 849
       32 JUMPIFNOTLE                      R4 R1 ; [+3]
       34 LOADN                            R3 560
       35 JUMP                             ; [+4]
       36 SUBK                             R6 R1 K9 [600]
       37 MULK                             R5 R6 K8 [60]
       38 DIVK                             R4 R5 K7 [249]
       39 ADDK                             R3 R4 K6 [500]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["useState"]
       10 LOADNIL                          R5
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K0 ["useState"]
       15 LOADN                            R7 720
       16 CALL                             R6 1 2
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K0 ["useState"]
       20 LOADN                            R9 880
       21 CALL                             R8 1 2
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K0 ["useState"]
       25 LOADN                            R11 0
       26 CALL                             R10 1 2
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K0 ["useState"]
       30 LOADN                            R13 0
       31 CALL                             R12 1 2
       32 GETUPVAL                         R14 1
       33 GETTABLEKS                       R14 R14 K0 ["useState"]
       35 LOADK                            R15 K1 [""]
       36 CALL                             R14 1 2
       37 LOADN                            R17 850
       38 JUMPIFLT                         R6 R17 ; [+2]
       40 LOADB                            R16 0 +1
       41 LOADB                            R16 1
       42 GETTABLEKS                       R17 R1 K2 ["Padding"]
       44 GETTABLEKS                       R17 R17 K3 ["XLarge"]
       46 JUMPIFNOT                        R16 ; [+9]
       47 LOADN                            R19 493
       48 ADD                              R21 R10 R17
       49 ADD                              R20 R21 R12
       50 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
       52 GETIMPORT                        R18 K6 [math.max]
       54 CALL                             R18 2 1
       55 JUMP                             ; [+7]
       56 LOADN                            R19 493
       57 FASTCALL2                        MATH_MAX R19 R12 ; [+4]
       59 MOVE                             R20 R12
       60 GETIMPORT                        R18 K6 [math.max]
       62 CALL                             R18 2 1
       63 GETUPVAL                         R19 1
       64 GETTABLEKS                       R19 R19 K7 ["useEffect"]
       66 NEWCLOSURE                       R20 P0
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R3
       71 NEWTABLE                         R21 0 1
       73 GETTABLEKS                       R22 R0 K8 ["LoginPluginBridge"]
       75 SETLIST                          R21 R22 1 [1]
       77 CALL                             R19 2 0
       78 JUMPIFNOT                        R2 ; [+3]
       79 GETTABLEKS                       R19 R2 K9 ["Code"]
       81 JUMP                             ; [+1]
       82 LOADK                            R19 K10 ["------"]
       83 LOADK                            R20 K1 [""]
       84 JUMPIFNOT                        R2 ; [+15]
       85 GETTABLEKS                       R21 R2 K11 ["ImagePath"]
       87 JUMPIFEQKS                       R21 K1 [""] ; [+12]
       89 GETUPVAL                         R21 3
       90 GETTABLEKS                       R21 R21 K12 ["new"]
       92 CALL                             R21 0 1
       93 GETTABLEKS                       R21 R21 K13 ["APIS_URL"]
       95 MOVE                             R22 R21
       96 LOADK                            R23 K14 ["auth-token-service"]
       97 GETTABLEKS                       R24 R2 K11 ["ImagePath"]
       99 CONCAT                           R20 R22 R24
      100 GETUPVAL                         R21 1
      101 GETTABLEKS                       R21 R21 K7 ["useEffect"]
      103 NEWCLOSURE                       R22 P1
      104 CAPTURE                          REF R20
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R15
      107 NEWTABLE                         R23 0 1
      109 MOVE                             R24 R20
      110 SETLIST                          R23 R24 1 [1]
      112 CALL                             R21 2 0
      113 GETUPVAL                         R21 1
      114 GETTABLEKS                       R21 R21 K15 ["createElement"]
      116 GETUPVAL                         R22 5
      117 DUPTABLE                         R23 K23 [{["Size"], ["AnchorPoint"], ["Position"], ["tag"] = "stroke-emphasis radius-large bg-surface-0", ["ClipsDescendants"] = True}]
      118 GETIMPORT                        R24 K26 [UDim2.fromOffset]
      120 MOVE                             R25 R8
      121 MOVE                             R26 R18
      122 CALL                             R24 2 1
      123 SETTABLEKS                       R24 R23 K16 ["Size"]
      125 JUMPIFNOT                        R16 ; [+6]
      126 GETIMPORT                        R24 K28 [Vector2.new]
      128 LOADK                            R25 K29 [0.5]
      129 LOADN                            R26 0
      130 CALL                             R24 2 1
      131 JUMP                             ; [+5]
      132 GETIMPORT                        R24 K28 [Vector2.new]
      134 LOADK                            R25 K29 [0.5]
      135 LOADK                            R26 K29 [0.5]
      136 CALL                             R24 2 1
      137 SETTABLEKS                       R24 R23 K17 ["AnchorPoint"]
      139 JUMPIFNOT                        R16 ; [+8]
      140 GETIMPORT                        R24 K30 [UDim2.new]
      142 LOADK                            R25 K29 [0.5]
      143 LOADN                            R26 0
      144 LOADN                            R27 0
      145 LOADN                            R28 60
      146 CALL                             R24 4 1
      147 JUMP                             ; [+5]
      148 GETIMPORT                        R24 K32 [UDim2.fromScale]
      150 LOADK                            R25 K29 [0.5]
      151 LOADK                            R26 K29 [0.5]
      152 CALL                             R24 2 1
      153 SETTABLEKS                       R24 R23 K18 ["Position"]
      155 DUPTABLE                         R24 K34 [{"ContentArea"}]
      156 JUMPIFNOT                        R16 ; [+90]
      157 GETUPVAL                         R25 1
      158 GETTABLEKS                       R25 R25 K15 ["createElement"]
      160 GETUPVAL                         R26 5
      161 DUPTABLE                         R27 K36 [{["tag"] = "col align-x-center gap-xlarge size-full-full"}]
      162 DUPTABLE                         R28 K39 [{"TopPanelWrapper", "BottomPanelWrapper"}]
      163 GETUPVAL                         R29 1
      164 GETTABLEKS                       R29 R29 K15 ["createElement"]
      166 GETUPVAL                         R30 5
      167 DUPTABLE                         R31 K42 [{["Size"], ["LayoutOrder"] = 1}]
      168 GETIMPORT                        R32 K30 [UDim2.new]
      170 LOADN                            R33 1
      171 LOADN                            R34 0
      172 LOADN                            R35 0
      173 MOVE                             R36 R10
      174 CALL                             R32 4 1
      175 SETTABLEKS                       R32 R31 K16 ["Size"]
      177 DUPTABLE                         R32 K44 [{"Panel"}]
      178 GETUPVAL                         R33 1
      179 GETTABLEKS                       R33 R33 K15 ["createElement"]
      181 GETUPVAL                         R34 6
      182 DUPTABLE                         R35 K47 [{["isNarrow"] = True, ["onMinHeightChanged"], ["Size"], ["LoginPluginBridge"]}]
      183 SETTABLEKS                       R11 R35 K46 ["onMinHeightChanged"]
      185 GETIMPORT                        R36 K30 [UDim2.new]
      187 LOADN                            R37 1
      188 LOADN                            R38 0
      189 LOADN                            R39 1
      190 LOADN                            R40 0
      191 CALL                             R36 4 1
      192 SETTABLEKS                       R36 R35 K16 ["Size"]
      194 GETTABLEKS                       R36 R0 K8 ["LoginPluginBridge"]
      196 SETTABLEKS                       R36 R35 K8 ["LoginPluginBridge"]
      198 CALL                             R33 2 1
      199 SETTABLEKS                       R33 R32 K43 ["Panel"]
      201 CALL                             R29 3 1
      202 SETTABLEKS                       R29 R28 K37 ["TopPanelWrapper"]
      204 GETUPVAL                         R29 1
      205 GETTABLEKS                       R29 R29 K15 ["createElement"]
      207 GETUPVAL                         R30 5
      208 DUPTABLE                         R31 K49 [{["Size"], ["LayoutOrder"] = 2}]
      209 GETIMPORT                        R32 K30 [UDim2.new]
      211 LOADN                            R33 1
      212 LOADN                            R34 0
      213 LOADN                            R35 0
      214 MOVE                             R36 R12
      215 CALL                             R32 4 1
      216 SETTABLEKS                       R32 R31 K16 ["Size"]
      218 DUPTABLE                         R32 K44 [{"Panel"}]
      219 GETUPVAL                         R33 1
      220 GETTABLEKS                       R33 R33 K15 ["createElement"]
      222 GETUPVAL                         R34 7
      223 DUPTABLE                         R35 K52 [{["code"], ["resolvedQrImage"], ["isNarrow"] = True, ["onMinHeightChanged"], ["Size"]}]
      224 SETTABLEKS                       R19 R35 K50 ["code"]
      226 SETTABLEKS                       R14 R35 K51 ["resolvedQrImage"]
      228 SETTABLEKS                       R13 R35 K46 ["onMinHeightChanged"]
      230 GETIMPORT                        R36 K30 [UDim2.new]
      232 LOADN                            R37 1
      233 LOADN                            R38 0
      234 LOADN                            R39 1
      235 LOADN                            R40 0
      236 CALL                             R36 4 1
      237 SETTABLEKS                       R36 R35 K16 ["Size"]
      239 CALL                             R33 2 1
      240 SETTABLEKS                       R33 R32 K43 ["Panel"]
      242 CALL                             R29 3 1
      243 SETTABLEKS                       R29 R28 K38 ["BottomPanelWrapper"]
      245 CALL                             R25 3 1
      246 JUMP                             ; [+83]
      247 GETUPVAL                         R25 1
      248 GETTABLEKS                       R25 R25 K15 ["createElement"]
      250 GETUPVAL                         R26 5
      251 DUPTABLE                         R27 K53 [{"Position", "Size"}]
      252 GETIMPORT                        R28 K26 [UDim2.fromOffset]
      254 LOADN                            R29 0
      255 LOADN                            R30 0
      256 CALL                             R28 2 1
      257 SETTABLEKS                       R28 R27 K18 ["Position"]
      259 GETIMPORT                        R28 K30 [UDim2.new]
      261 LOADN                            R29 1
      262 LOADN                            R30 -48
      263 LOADN                            R31 1
      264 LOADN                            R32 0
      265 CALL                             R28 4 1
      266 SETTABLEKS                       R28 R27 K16 ["Size"]
      268 DUPTABLE                         R28 K56 [{"LeftPanel", "RightPanel"}]
      269 GETUPVAL                         R29 1
      270 GETTABLEKS                       R29 R29 K15 ["createElement"]
      272 GETUPVAL                         R30 6
      273 DUPTABLE                         R31 K57 [{"Position", "Size", "LoginPluginBridge"}]
      274 GETIMPORT                        R32 K32 [UDim2.fromScale]
      276 LOADN                            R33 0
      277 LOADN                            R34 0
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K18 ["Position"]
      281 GETIMPORT                        R32 K30 [UDim2.new]
      283 LOADK                            R33 K29 [0.5]
      284 LOADN                            R34 0
      285 LOADN                            R35 1
      286 LOADN                            R36 0
      287 CALL                             R32 4 1
      288 SETTABLEKS                       R32 R31 K16 ["Size"]
      290 GETTABLEKS                       R32 R0 K8 ["LoginPluginBridge"]
      292 SETTABLEKS                       R32 R31 K8 ["LoginPluginBridge"]
      294 CALL                             R29 2 1
      295 SETTABLEKS                       R29 R28 K54 ["LeftPanel"]
      297 GETUPVAL                         R29 1
      298 GETTABLEKS                       R29 R29 K15 ["createElement"]
      300 GETUPVAL                         R30 7
      301 DUPTABLE                         R31 K58 [{"code", "resolvedQrImage", "Position", "Size", "onMinHeightChanged"}]
      302 SETTABLEKS                       R19 R31 K50 ["code"]
      304 SETTABLEKS                       R14 R31 K51 ["resolvedQrImage"]
      306 GETIMPORT                        R32 K30 [UDim2.new]
      308 LOADK                            R33 K29 [0.5]
      309 LOADN                            R34 0
      310 LOADN                            R35 0
      311 LOADN                            R36 0
      312 CALL                             R32 4 1
      313 SETTABLEKS                       R32 R31 K18 ["Position"]
      315 GETIMPORT                        R32 K30 [UDim2.new]
      317 LOADK                            R33 K29 [0.5]
      318 LOADN                            R34 0
      319 LOADN                            R35 1
      320 LOADN                            R36 0
      321 CALL                             R32 4 1
      322 SETTABLEKS                       R32 R31 K16 ["Size"]
      324 SETTABLEKS                       R13 R31 K46 ["onMinHeightChanged"]
      326 CALL                             R29 2 1
      327 SETTABLEKS                       R29 R28 K55 ["RightPanel"]
      329 CALL                             R25 3 1
      330 SETTABLEKS                       R25 R24 K33 ["ContentArea"]
      332 CALL                             R21 3 1
      333 GETUPVAL                         R22 1
      334 GETTABLEKS                       R22 R22 K15 ["createElement"]
      336 GETUPVAL                         R23 5
      337 DUPTABLE                         R24 K60 [{"Size", "onAbsoluteSizeChanged"}]
      338 GETIMPORT                        R25 K32 [UDim2.fromScale]
      340 LOADN                            R26 1
      341 LOADN                            R27 1
      342 CALL                             R25 2 1
      343 SETTABLEKS                       R25 R24 K16 ["Size"]
      345 NEWCLOSURE                       R25 P2
      346 CAPTURE                          VAL R7
      347 CAPTURE                          VAL R9
      348 SETTABLEKS                       R25 R24 K59 ["onAbsoluteSizeChanged"]
      350 DUPTABLE                         R25 K64 [{"Background", "ScrollContainer", "Card"}]
      351 GETUPVAL                         R26 1
      352 GETTABLEKS                       R26 R26 K15 ["createElement"]
      354 GETUPVAL                         R27 8
      355 DUPTABLE                         R28 K71 [{["tag"] = "size-full-full", ["Image"] = "rbxasset://textures/LoginPage/Background.png", ["ScaleType"], ["ZIndex"] = 0}]
      356 GETIMPORT                        R29 K74 [Enum.ScaleType.Crop]
      358 SETTABLEKS                       R29 R28 K68 ["ScaleType"]
      360 CALL                             R26 2 1
      361 SETTABLEKS                       R26 R25 K61 ["Background"]
      363 JUMPIFNOT                        R16 ; [+41]
      364 GETUPVAL                         R26 1
      365 GETTABLEKS                       R26 R26 K15 ["createElement"]
      367 GETUPVAL                         R27 9
      368 DUPTABLE                         R28 K76 [{"Size", "scroll"}]
      369 GETIMPORT                        R29 K32 [UDim2.fromScale]
      371 LOADN                            R30 1
      372 LOADN                            R31 1
      373 CALL                             R29 2 1
      374 SETTABLEKS                       R29 R28 K16 ["Size"]
      376 DUPTABLE                         R29 K80 [{"CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      377 GETIMPORT                        R30 K26 [UDim2.fromOffset]
      379 LOADN                            R31 0
      380 ADDK                             R33 R18 K81 [60]
      381 ADDK                             R32 R33 K81 [60]
      382 CALL                             R30 2 1
      383 SETTABLEKS                       R30 R29 K77 ["CanvasSize"]
      385 GETIMPORT                        R30 K83 [Enum.ScrollingDirection.Y]
      387 SETTABLEKS                       R30 R29 K78 ["ScrollingDirection"]
      389 GETUPVAL                         R30 10
      390 GETTABLEKS                       R30 R30 K84 ["Enums"]
      392 GETTABLEKS                       R30 R30 K85 ["Visibility"]
      394 GETTABLEKS                       R30 R30 K86 ["None"]
      396 SETTABLEKS                       R30 R29 K79 ["scrollBarVisibility"]
      398 SETTABLEKS                       R29 R28 K75 ["scroll"]
      400 DUPTABLE                         R29 K87 [{"Card"}]
      401 SETTABLEKS                       R21 R29 K63 ["Card"]
      403 CALL                             R26 3 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R26
      406 SETTABLEKS                       R26 R25 K62 ["ScrollContainer"]
      408 JUMPIFNOT                        R16 ; [+2]
      409 LOADNIL                          R26
      410 JUMP                             ; [+1]
      411 MOVE                             R26 R21
      412 SETTABLEKS                       R26 R25 K63 ["Card"]
      414 CALL                             R22 3 -1
      415 CLOSEUPVALS                      R20
      416 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETTABLEKS                       R4 R2 K11 ["View"]
       27 GETTABLEKS                       R5 R2 K12 ["Image"]
       29 GETTABLEKS                       R6 R2 K13 ["ScrollView"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Packages"]
       35 GETTABLEKS                       R8 R8 K14 ["Framework"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K15 ["RobloxAPI"]
       40 GETTABLEKS                       R8 R8 K16 ["Url"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K17 ["Src"]
       46 GETTABLEKS                       R10 R10 K18 ["Util"]
       48 GETTABLEKS                       R10 R10 K19 ["Services"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K17 ["Src"]
       55 GETTABLEKS                       R11 R11 K18 ["Util"]
       57 GETTABLEKS                       R11 R11 K20 ["Analytics"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETIMPORT                        R12 K1 [script]
       64 GETTABLEKS                       R12 R12 K21 ["Parent"]
       66 GETTABLEKS                       R12 R12 K22 ["WebSignInPanel"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETIMPORT                        R13 K1 [script]
       73 GETTABLEKS                       R13 R13 K21 ["Parent"]
       75 GETTABLEKS                       R13 R13 K23 ["QuickSignInPanel"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R9 K24 ["StartPageManager"]
       80 DUPCLOSURE                       R14 K25 [PROTO_0]
       81 DUPCLOSURE                       R15 K26 [PROTO_1]
       82 DUPCLOSURE                       R16 K27 [PROTO_2]
       83 DUPCLOSURE                       R17 K28 [PROTO_14]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R2
       95 RETURN                           R17 1
