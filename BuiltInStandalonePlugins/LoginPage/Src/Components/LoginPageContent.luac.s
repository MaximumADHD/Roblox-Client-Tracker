PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K5 [{["tag"] = "size-full-full stroke-emphasis radius-large clip bg-surface-0"}]
       12 DUPTABLE                         R4 K7 [{"LoadingContent"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K10 [{["Size"], ["tag"] = "position-center-center anchor-center-center"}]
       18 GETUPVAL                         R8 3
       19 SETTABLEKS                       R8 R7 K8 ["Size"]
       21 DUPTABLE                         R8 K13 [{"Spinner", "Label"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K2 ["createElement"]
       25 GETUPVAL                         R10 4
       26 DUPTABLE                         R11 K20 [{["shape"], ["size"], ["value"] = , ["AnchorPoint"], ["Position"]}]
       27 GETUPVAL                         R12 5
       28 GETTABLEKS                       R12 R12 K21 ["Circle"]
       30 SETTABLEKS                       R12 R11 K14 ["shape"]
       32 GETUPVAL                         R12 6
       33 GETTABLEKS                       R12 R12 K22 ["Large"]
       35 SETTABLEKS                       R12 R11 K15 ["size"]
       37 GETIMPORT                        R12 K25 [Vector2.new]
       39 LOADK                            R13 K26 [0.5]
       40 LOADN                            R14 0
       41 CALL                             R12 2 1
       42 SETTABLEKS                       R12 R11 K18 ["AnchorPoint"]
       44 GETIMPORT                        R12 K29 [UDim2.fromScale]
       46 LOADK                            R13 K26 [0.5]
       47 LOADN                            R14 0
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K19 ["Position"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K11 ["Spinner"]
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K2 ["createElement"]
       57 GETUPVAL                         R10 7
       58 DUPTABLE                         R11 K32 [{["tag"] = "text-title-large text-align-x-center content-emphasis", ["Text"], ["Size"], ["Position"]}]
       59 LOADK                            R14 K33 ["AutoLogin"]
       60 LOADK                            R15 K34 ["Loading"]
       61 NAMECALL                         R12 R0 K35 ["getText"]
       63 CALL                             R12 3 1
       64 SETTABLEKS                       R12 R11 K31 ["Text"]
       66 GETUPVAL                         R12 8
       67 SETTABLEKS                       R12 R11 K8 ["Size"]
       69 GETIMPORT                        R12 K37 [UDim2.fromOffset]
       71 LOADN                            R13 0
       72 LOADN                            R14 68
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K19 ["Position"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K12 ["Label"]
       79 CALL                             R5 3 1
       80 SETTABLEKS                       R5 R4 K6 ["LoadingContent"]
       82 CALL                             R1 3 -1
       83 RETURN                           R1 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 1
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETIMPORT                        R0 K2 [task.cancel]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 2
       15 GETUPVAL                         R0 3
       16 LOADB                            R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 GETTABLEKS                       R0 R0 K1 ["LoginPageRequested"]
        5 RETURN                           R0 1

PROTO_6:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 2
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K0 ["reportLoginPageRequestTimeout"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 4
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K1 ["HasLoginPageBeenRequestedAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+19]
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETUPVAL                         R2 1
        8 JUMPIF                           R2 ; [+16]
        9 GETUPVAL                         R2 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 0
       12 LOADB                            R2 1
       13 SETUPVAL                         R2 2
       14 GETUPVAL                         R2 3
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETIMPORT                        R2 K4 [task.cancel]
       18 GETUPVAL                         R3 3
       19 CALL                             R2 1 0
       20 LOADNIL                          R2
       21 SETUPVAL                         R2 3
       22 GETUPVAL                         R2 4
       23 LOADB                            R3 1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETIMPORT                        R0 K3 [task.cancel]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADB                            R2 0
        3 LOADB                            R3 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          REF R3
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U0
        9 GETIMPORT                        R5 K1 [pcall]
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          UPVAL U1
       13 CALL                             R5 1 2
       14 JUMPIFNOT                        R5 ; [+6]
       15 JUMPIFNOT                        R6 ; [+5]
       16 MOVE                             R9 R4
       17 NAMECALL                         R7 R6 K2 ["Connect"]
       19 CALL                             R7 2 1
       20 MOVE                             R0 R7
       21 GETIMPORT                        R7 K5 [task.delay]
       23 LOADN                            R8 15
       24 NEWCLOSURE                       R9 P2
       25 CAPTURE                          REF R1
       26 CAPTURE                          REF R2
       27 CAPTURE                          REF R3
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U0
       30 CALL                             R7 2 1
       31 MOVE                             R1 R7
       32 GETIMPORT                        R7 K7 [task.spawn]
       34 NEWCLOSURE                       R8 P3
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          REF R2
       37 CAPTURE                          REF R3
       38 CAPTURE                          REF R1
       39 CAPTURE                          UPVAL U0
       40 CALL                             R7 1 0
       41 NEWCLOSURE                       R7 P4
       42 CAPTURE                          REF R2
       43 CAPTURE                          REF R0
       44 CAPTURE                          REF R1
       45 CLOSEUPVALS                      R0
       46 RETURN                           R7 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K1 ["BeginLoginPageFlowAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K1 ["CreateQuickSignInAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Code"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["PrivateKey"]
        9 NAMECALL                         R0 R0 K3 ["AwaitQuickSignInAsync"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K1 ["RestartAutomaticLoginWithNewCookieAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_15:
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

PROTO_16:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 GETIMPORT                        R1 K2 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R1 1 0
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          REF R0
       15 CLOSEUPVALS                      R0
       16 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R2 R2 K0 ["Disconnect"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R6 0 1
       16 GETTABLEKS                       R7 R0 K2 ["LoginPluginBridge"]
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 0
       21 NOT                              R4 R2
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K0 ["useState"]
       25 LOADNIL                          R6
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K0 ["useState"]
       30 LOADNIL                          R8
       31 CALL                             R7 1 2
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K0 ["useState"]
       35 LOADN                            R10 720
       36 CALL                             R9 1 2
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R11 R11 K0 ["useState"]
       40 LOADN                            R12 880
       41 CALL                             R11 1 2
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R13 R13 K0 ["useState"]
       45 LOADN                            R14 0
       46 CALL                             R13 1 2
       47 GETUPVAL                         R15 1
       48 GETTABLEKS                       R15 R15 K0 ["useState"]
       50 LOADN                            R16 0
       51 CALL                             R15 1 2
       52 GETUPVAL                         R17 1
       53 GETTABLEKS                       R17 R17 K0 ["useState"]
       55 LOADK                            R18 K3 [""]
       56 CALL                             R17 1 2
       57 LOADN                            R20 850
       58 JUMPIFLT                         R9 R20 ; [+2]
       60 LOADB                            R19 0 +1
       61 LOADB                            R19 1
       62 GETTABLEKS                       R20 R1 K4 ["Padding"]
       64 GETTABLEKS                       R20 R20 K5 ["XLarge"]
       66 JUMPIFNOT                        R19 ; [+9]
       67 LOADN                            R22 493
       68 ADD                              R24 R13 R20
       69 ADD                              R23 R24 R15
       70 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
       72 GETIMPORT                        R21 K8 [math.max]
       74 CALL                             R21 2 1
       75 JUMP                             ; [+7]
       76 LOADN                            R22 493
       77 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
       79 MOVE                             R23 R15
       80 GETIMPORT                        R21 K8 [math.max]
       82 CALL                             R21 2 1
       83 GETUPVAL                         R22 1
       84 GETTABLEKS                       R22 R22 K1 ["useEffect"]
       86 NEWCLOSURE                       R23 P1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R6
       92 NEWTABLE                         R24 0 2
       94 GETTABLEKS                       R25 R0 K2 ["LoginPluginBridge"]
       96 MOVE                             R26 R4
       97 SETLIST                          R24 R25 2 [1]
       99 CALL                             R22 2 0
      100 JUMPIFNOT                        R5 ; [+3]
      101 GETTABLEKS                       R22 R5 K9 ["Code"]
      103 JUMP                             ; [+1]
      104 LOADK                            R22 K10 ["------"]
      105 LOADK                            R23 K3 [""]
      106 JUMPIFNOT                        R5 ; [+15]
      107 GETTABLEKS                       R24 R5 K11 ["ImagePath"]
      109 JUMPIFEQKS                       R24 K3 [""] ; [+12]
      111 GETUPVAL                         R24 3
      112 GETTABLEKS                       R24 R24 K12 ["new"]
      114 CALL                             R24 0 1
      115 GETTABLEKS                       R24 R24 K13 ["APIS_URL"]
      117 MOVE                             R25 R24
      118 LOADK                            R26 K14 ["auth-token-service"]
      119 GETTABLEKS                       R27 R5 K11 ["ImagePath"]
      121 CONCAT                           R23 R25 R27
      122 GETUPVAL                         R24 1
      123 GETTABLEKS                       R24 R24 K1 ["useEffect"]
      125 NEWCLOSURE                       R25 P2
      126 CAPTURE                          REF R23
      127 CAPTURE                          UPVAL U4
      128 CAPTURE                          VAL R18
      129 NEWTABLE                         R26 0 1
      131 MOVE                             R27 R23
      132 SETLIST                          R26 R27 1 [1]
      134 CALL                             R24 2 0
      135 GETUPVAL                         R24 1
      136 GETTABLEKS                       R24 R24 K15 ["createElement"]
      138 GETUPVAL                         R25 5
      139 DUPTABLE                         R26 K21 [{["Size"], ["AnchorPoint"], ["Position"], ["tag"] = "stroke-emphasis radius-large clip bg-surface-0"}]
      140 GETIMPORT                        R27 K24 [UDim2.fromOffset]
      142 MOVE                             R28 R11
      143 MOVE                             R29 R21
      144 CALL                             R27 2 1
      145 SETTABLEKS                       R27 R26 K16 ["Size"]
      147 JUMPIFNOT                        R19 ; [+6]
      148 GETIMPORT                        R27 K26 [Vector2.new]
      150 LOADK                            R28 K27 [0.5]
      151 LOADN                            R29 0
      152 CALL                             R27 2 1
      153 JUMP                             ; [+5]
      154 GETIMPORT                        R27 K26 [Vector2.new]
      156 LOADK                            R28 K27 [0.5]
      157 LOADK                            R29 K27 [0.5]
      158 CALL                             R27 2 1
      159 SETTABLEKS                       R27 R26 K17 ["AnchorPoint"]
      161 JUMPIFNOT                        R19 ; [+8]
      162 GETIMPORT                        R27 K28 [UDim2.new]
      164 LOADK                            R28 K27 [0.5]
      165 LOADN                            R29 0
      166 LOADN                            R30 0
      167 LOADN                            R31 60
      168 CALL                             R27 4 1
      169 JUMP                             ; [+5]
      170 GETIMPORT                        R27 K30 [UDim2.fromScale]
      172 LOADK                            R28 K27 [0.5]
      173 LOADK                            R29 K27 [0.5]
      174 CALL                             R27 2 1
      175 SETTABLEKS                       R27 R26 K18 ["Position"]
      177 DUPTABLE                         R27 K33 [{"ContentArea", "LoadingPanel"}]
      178 JUMPIFNOT                        R19 ; [+93]
      179 GETUPVAL                         R28 1
      180 GETTABLEKS                       R28 R28 K15 ["createElement"]
      182 GETUPVAL                         R29 5
      183 DUPTABLE                         R30 K36 [{["tag"] = "col align-x-center gap-xlarge size-full-full", ["Visible"]}]
      184 NOT                              R31 R4
      185 SETTABLEKS                       R31 R30 K35 ["Visible"]
      187 DUPTABLE                         R31 K39 [{"TopPanelWrapper", "BottomPanelWrapper"}]
      188 GETUPVAL                         R32 1
      189 GETTABLEKS                       R32 R32 K15 ["createElement"]
      191 GETUPVAL                         R33 5
      192 DUPTABLE                         R34 K42 [{["Size"], ["LayoutOrder"] = 1}]
      193 GETIMPORT                        R35 K28 [UDim2.new]
      195 LOADN                            R36 1
      196 LOADN                            R37 0
      197 LOADN                            R38 0
      198 MOVE                             R39 R13
      199 CALL                             R35 4 1
      200 SETTABLEKS                       R35 R34 K16 ["Size"]
      202 DUPTABLE                         R35 K44 [{"Panel"}]
      203 GETUPVAL                         R36 1
      204 GETTABLEKS                       R36 R36 K15 ["createElement"]
      206 GETUPVAL                         R37 6
      207 DUPTABLE                         R38 K48 [{["isNarrow"] = True, ["onMinHeightChanged"], ["Size"], ["LoginPluginBridge"]}]
      208 SETTABLEKS                       R14 R38 K47 ["onMinHeightChanged"]
      210 GETIMPORT                        R39 K28 [UDim2.new]
      212 LOADN                            R40 1
      213 LOADN                            R41 0
      214 LOADN                            R42 1
      215 LOADN                            R43 0
      216 CALL                             R39 4 1
      217 SETTABLEKS                       R39 R38 K16 ["Size"]
      219 GETTABLEKS                       R39 R0 K2 ["LoginPluginBridge"]
      221 SETTABLEKS                       R39 R38 K2 ["LoginPluginBridge"]
      223 CALL                             R36 2 1
      224 SETTABLEKS                       R36 R35 K43 ["Panel"]
      226 CALL                             R32 3 1
      227 SETTABLEKS                       R32 R31 K37 ["TopPanelWrapper"]
      229 GETUPVAL                         R32 1
      230 GETTABLEKS                       R32 R32 K15 ["createElement"]
      232 GETUPVAL                         R33 5
      233 DUPTABLE                         R34 K50 [{["Size"], ["LayoutOrder"] = 2}]
      234 GETIMPORT                        R35 K28 [UDim2.new]
      236 LOADN                            R36 1
      237 LOADN                            R37 0
      238 LOADN                            R38 0
      239 MOVE                             R39 R15
      240 CALL                             R35 4 1
      241 SETTABLEKS                       R35 R34 K16 ["Size"]
      243 DUPTABLE                         R35 K44 [{"Panel"}]
      244 GETUPVAL                         R36 1
      245 GETTABLEKS                       R36 R36 K15 ["createElement"]
      247 GETUPVAL                         R37 7
      248 DUPTABLE                         R38 K53 [{["code"], ["resolvedQrImage"], ["isNarrow"] = True, ["onMinHeightChanged"], ["Size"]}]
      249 SETTABLEKS                       R22 R38 K51 ["code"]
      251 SETTABLEKS                       R17 R38 K52 ["resolvedQrImage"]
      253 SETTABLEKS                       R16 R38 K47 ["onMinHeightChanged"]
      255 GETIMPORT                        R39 K28 [UDim2.new]
      257 LOADN                            R40 1
      258 LOADN                            R41 0
      259 LOADN                            R42 1
      260 LOADN                            R43 0
      261 CALL                             R39 4 1
      262 SETTABLEKS                       R39 R38 K16 ["Size"]
      264 CALL                             R36 2 1
      265 SETTABLEKS                       R36 R35 K43 ["Panel"]
      267 CALL                             R32 3 1
      268 SETTABLEKS                       R32 R31 K38 ["BottomPanelWrapper"]
      270 CALL                             R28 3 1
      271 JUMP                             ; [+86]
      272 GETUPVAL                         R28 1
      273 GETTABLEKS                       R28 R28 K15 ["createElement"]
      275 GETUPVAL                         R29 5
      276 DUPTABLE                         R30 K54 [{"Position", "Size", "Visible"}]
      277 GETIMPORT                        R31 K24 [UDim2.fromOffset]
      279 LOADN                            R32 0
      280 LOADN                            R33 0
      281 CALL                             R31 2 1
      282 SETTABLEKS                       R31 R30 K18 ["Position"]
      284 GETIMPORT                        R31 K28 [UDim2.new]
      286 LOADN                            R32 1
      287 LOADN                            R33 -48
      288 LOADN                            R34 1
      289 LOADN                            R35 0
      290 CALL                             R31 4 1
      291 SETTABLEKS                       R31 R30 K16 ["Size"]
      293 NOT                              R31 R4
      294 SETTABLEKS                       R31 R30 K35 ["Visible"]
      296 DUPTABLE                         R31 K57 [{"LeftPanel", "RightPanel"}]
      297 GETUPVAL                         R32 1
      298 GETTABLEKS                       R32 R32 K15 ["createElement"]
      300 GETUPVAL                         R33 6
      301 DUPTABLE                         R34 K58 [{"Position", "Size", "LoginPluginBridge"}]
      302 GETIMPORT                        R35 K30 [UDim2.fromScale]
      304 LOADN                            R36 0
      305 LOADN                            R37 0
      306 CALL                             R35 2 1
      307 SETTABLEKS                       R35 R34 K18 ["Position"]
      309 GETIMPORT                        R35 K28 [UDim2.new]
      311 LOADK                            R36 K27 [0.5]
      312 LOADN                            R37 0
      313 LOADN                            R38 1
      314 LOADN                            R39 0
      315 CALL                             R35 4 1
      316 SETTABLEKS                       R35 R34 K16 ["Size"]
      318 GETTABLEKS                       R35 R0 K2 ["LoginPluginBridge"]
      320 SETTABLEKS                       R35 R34 K2 ["LoginPluginBridge"]
      322 CALL                             R32 2 1
      323 SETTABLEKS                       R32 R31 K55 ["LeftPanel"]
      325 GETUPVAL                         R32 1
      326 GETTABLEKS                       R32 R32 K15 ["createElement"]
      328 GETUPVAL                         R33 7
      329 DUPTABLE                         R34 K59 [{"code", "resolvedQrImage", "Position", "Size", "onMinHeightChanged"}]
      330 SETTABLEKS                       R22 R34 K51 ["code"]
      332 SETTABLEKS                       R17 R34 K52 ["resolvedQrImage"]
      334 GETIMPORT                        R35 K28 [UDim2.new]
      336 LOADK                            R36 K27 [0.5]
      337 LOADN                            R37 0
      338 LOADN                            R38 0
      339 LOADN                            R39 0
      340 CALL                             R35 4 1
      341 SETTABLEKS                       R35 R34 K18 ["Position"]
      343 GETIMPORT                        R35 K28 [UDim2.new]
      345 LOADK                            R36 K27 [0.5]
      346 LOADN                            R37 0
      347 LOADN                            R38 1
      348 LOADN                            R39 0
      349 CALL                             R35 4 1
      350 SETTABLEKS                       R35 R34 K16 ["Size"]
      352 SETTABLEKS                       R16 R34 K47 ["onMinHeightChanged"]
      354 CALL                             R32 2 1
      355 SETTABLEKS                       R32 R31 K56 ["RightPanel"]
      357 CALL                             R28 3 1
      358 SETTABLEKS                       R28 R27 K31 ["ContentArea"]
      360 JUMPIFNOT                        R4 ; [+6]
      361 GETUPVAL                         R28 1
      362 GETTABLEKS                       R28 R28 K15 ["createElement"]
      364 GETUPVAL                         R29 8
      365 CALL                             R28 1 1
      366 JUMP                             ; [+1]
      367 LOADNIL                          R28
      368 SETTABLEKS                       R28 R27 K32 ["LoadingPanel"]
      370 CALL                             R24 3 1
      371 GETUPVAL                         R25 1
      372 GETTABLEKS                       R25 R25 K15 ["createElement"]
      374 GETUPVAL                         R26 5
      375 DUPTABLE                         R27 K61 [{"Size", "onAbsoluteSizeChanged"}]
      376 GETIMPORT                        R28 K30 [UDim2.fromScale]
      378 LOADN                            R29 1
      379 LOADN                            R30 1
      380 CALL                             R28 2 1
      381 SETTABLEKS                       R28 R27 K16 ["Size"]
      383 NEWCLOSURE                       R28 P3
      384 CAPTURE                          VAL R10
      385 CAPTURE                          VAL R12
      386 SETTABLEKS                       R28 R27 K60 ["onAbsoluteSizeChanged"]
      388 DUPTABLE                         R28 K65 [{"Background", "ScrollContainer", "Card"}]
      389 GETUPVAL                         R29 1
      390 GETTABLEKS                       R29 R29 K15 ["createElement"]
      392 GETUPVAL                         R30 9
      393 DUPTABLE                         R31 K72 [{["tag"] = "size-full-full", ["Image"] = "rbxasset://textures/LoginPage/Background.png", ["ScaleType"], ["ZIndex"] = 0}]
      394 GETIMPORT                        R32 K75 [Enum.ScaleType.Crop]
      396 SETTABLEKS                       R32 R31 K69 ["ScaleType"]
      398 CALL                             R29 2 1
      399 SETTABLEKS                       R29 R28 K62 ["Background"]
      401 JUMPIFNOT                        R19 ; [+41]
      402 GETUPVAL                         R29 1
      403 GETTABLEKS                       R29 R29 K15 ["createElement"]
      405 GETUPVAL                         R30 10
      406 DUPTABLE                         R31 K77 [{"Size", "scroll"}]
      407 GETIMPORT                        R32 K30 [UDim2.fromScale]
      409 LOADN                            R33 1
      410 LOADN                            R34 1
      411 CALL                             R32 2 1
      412 SETTABLEKS                       R32 R31 K16 ["Size"]
      414 DUPTABLE                         R32 K81 [{"CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      415 GETIMPORT                        R33 K24 [UDim2.fromOffset]
      417 LOADN                            R34 0
      418 ADDK                             R36 R21 K82 [60]
      419 ADDK                             R35 R36 K82 [60]
      420 CALL                             R33 2 1
      421 SETTABLEKS                       R33 R32 K78 ["CanvasSize"]
      423 GETIMPORT                        R33 K84 [Enum.ScrollingDirection.Y]
      425 SETTABLEKS                       R33 R32 K79 ["ScrollingDirection"]
      427 GETUPVAL                         R33 11
      428 GETTABLEKS                       R33 R33 K85 ["Enums"]
      430 GETTABLEKS                       R33 R33 K86 ["Visibility"]
      432 GETTABLEKS                       R33 R33 K87 ["None"]
      434 SETTABLEKS                       R33 R32 K80 ["scrollBarVisibility"]
      436 SETTABLEKS                       R32 R31 K76 ["scroll"]
      438 DUPTABLE                         R32 K88 [{"Card"}]
      439 SETTABLEKS                       R24 R32 K64 ["Card"]
      441 CALL                             R29 3 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R29
      444 SETTABLEKS                       R29 R28 K63 ["ScrollContainer"]
      446 JUMPIFNOT                        R19 ; [+2]
      447 LOADNIL                          R29
      448 JUMP                             ; [+1]
      449 MOVE                             R29 R24
      450 SETTABLEKS                       R29 R28 K64 ["Card"]
      452 CALL                             R25 3 -1
      453 CLOSEUPVALS                      R23
      454 RETURN                           R25 -1

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
       25 GETTABLEKS                       R4 R2 K11 ["Image"]
       27 GETTABLEKS                       R5 R2 K12 ["Progress"]
       29 GETTABLEKS                       R6 R2 K13 ["Enums"]
       31 GETTABLEKS                       R6 R6 K14 ["ProgressShape"]
       33 GETTABLEKS                       R7 R2 K13 ["Enums"]
       35 GETTABLEKS                       R7 R7 K15 ["ProgressSize"]
       37 GETTABLEKS                       R8 R2 K16 ["ScrollView"]
       39 GETTABLEKS                       R9 R2 K17 ["Text"]
       41 GETTABLEKS                       R10 R2 K18 ["View"]
       43 GETIMPORT                        R11 K5 [require]
       45 GETTABLEKS                       R12 R0 K6 ["Packages"]
       47 GETTABLEKS                       R12 R12 K19 ["Framework"]
       49 CALL                             R11 1 1
       50 GETIMPORT                        R12 K5 [require]
       52 GETTABLEKS                       R13 R0 K6 ["Packages"]
       54 GETTABLEKS                       R13 R13 K20 ["StudioFoundation"]
       56 CALL                             R12 1 1
       57 GETTABLEKS                       R13 R12 K21 ["Contexts"]
       59 GETTABLEKS                       R13 R13 K22 ["Localization"]
       61 GETTABLEKS                       R14 R11 K23 ["RobloxAPI"]
       63 GETTABLEKS                       R14 R14 K24 ["Url"]
       65 GETIMPORT                        R15 K5 [require]
       67 GETTABLEKS                       R16 R0 K25 ["Src"]
       69 GETTABLEKS                       R16 R16 K26 ["Util"]
       71 GETTABLEKS                       R16 R16 K27 ["Services"]
       73 CALL                             R15 1 1
       74 GETIMPORT                        R16 K5 [require]
       76 GETTABLEKS                       R17 R0 K25 ["Src"]
       78 GETTABLEKS                       R17 R17 K26 ["Util"]
       80 GETTABLEKS                       R17 R17 K28 ["Analytics"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K5 [require]
       85 GETIMPORT                        R18 K1 [script]
       87 GETTABLEKS                       R18 R18 K29 ["Parent"]
       89 GETTABLEKS                       R18 R18 K30 ["WebSignInPanel"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETIMPORT                        R19 K1 [script]
       96 GETTABLEKS                       R19 R19 K29 ["Parent"]
       98 GETTABLEKS                       R19 R19 K31 ["QuickSignInPanel"]
      100 CALL                             R18 1 1
      101 GETTABLEKS                       R19 R15 K32 ["StartPageManager"]
      103 GETIMPORT                        R20 K35 [UDim2.fromOffset]
      105 LOADN                            R21 179
      106 LOADN                            R22 90
      107 CALL                             R20 2 1
      108 GETIMPORT                        R21 K35 [UDim2.fromOffset]
      110 LOADN                            R22 179
      111 LOADN                            R23 22
      112 CALL                             R21 2 1
      113 DUPCLOSURE                       R22 K36 [PROTO_0]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R21
      123 DUPCLOSURE                       R23 K37 [PROTO_1]
      124 DUPCLOSURE                       R24 K38 [PROTO_2]
      125 DUPCLOSURE                       R25 K39 [PROTO_3]
      126 DUPCLOSURE                       R26 K40 [PROTO_22]
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R2
      139 RETURN                           R26 1
