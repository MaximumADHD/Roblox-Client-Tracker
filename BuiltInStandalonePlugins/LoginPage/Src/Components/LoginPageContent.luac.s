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
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["reportLoginPageRequestTimeout"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 4
       12 JUMPIFNOT                        R0 ; [+5]
       13 LOADB                            R0 1
       14 SETUPVAL                         R0 2
       15 GETUPVAL                         R0 5
       16 LOADB                            R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["getFIntLoginPageRequestTimeoutSeconds"]
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["getFFlagLoginPageEnableWatchdogTimeoutFallback"]
       11 CALL                             R5 0 1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          REF R2
       14 CAPTURE                          REF R3
       15 CAPTURE                          REF R1
       16 CAPTURE                          UPVAL U1
       17 GETIMPORT                        R7 K3 [pcall]
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          UPVAL U2
       21 CALL                             R7 1 2
       22 JUMPIFNOT                        R7 ; [+6]
       23 JUMPIFNOT                        R8 ; [+5]
       24 MOVE                             R11 R6
       25 NAMECALL                         R9 R8 K4 ["Connect"]
       27 CALL                             R9 2 1
       28 MOVE                             R0 R9
       29 LOADN                            R9 0
       30 JUMPIFNOTLT                      R9 R4 ; [+13]
       32 GETIMPORT                        R9 K7 [task.delay]
       34 MOVE                             R10 R4
       35 NEWCLOSURE                       R11 P2
       36 CAPTURE                          REF R1
       37 CAPTURE                          REF R2
       38 CAPTURE                          REF R3
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U1
       42 CALL                             R9 2 1
       43 MOVE                             R1 R9
       44 GETIMPORT                        R9 K9 [task.spawn]
       46 NEWCLOSURE                       R10 P3
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          REF R2
       49 CAPTURE                          REF R3
       50 CAPTURE                          REF R1
       51 CAPTURE                          UPVAL U1
       52 CALL                             R9 1 0
       53 NEWCLOSURE                       R9 P4
       54 CAPTURE                          REF R2
       55 CAPTURE                          REF R0
       56 CAPTURE                          REF R1
       57 CLOSEUPVALS                      R0
       58 RETURN                           R9 1

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
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R6 0 1
       17 GETTABLEKS                       R7 R0 K2 ["LoginPluginBridge"]
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 0
       22 NOT                              R4 R2
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K0 ["useState"]
       26 LOADNIL                          R6
       27 CALL                             R5 1 2
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K0 ["useState"]
       31 LOADNIL                          R8
       32 CALL                             R7 1 2
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K0 ["useState"]
       36 LOADN                            R10 720
       37 CALL                             R9 1 2
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R11 R11 K0 ["useState"]
       41 LOADN                            R12 880
       42 CALL                             R11 1 2
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R13 R13 K0 ["useState"]
       46 LOADN                            R14 0
       47 CALL                             R13 1 2
       48 GETUPVAL                         R15 1
       49 GETTABLEKS                       R15 R15 K0 ["useState"]
       51 LOADN                            R16 0
       52 CALL                             R15 1 2
       53 GETUPVAL                         R17 1
       54 GETTABLEKS                       R17 R17 K0 ["useState"]
       56 LOADK                            R18 K3 [""]
       57 CALL                             R17 1 2
       58 LOADN                            R20 850
       59 JUMPIFLT                         R9 R20 ; [+2]
       61 LOADB                            R19 0 +1
       62 LOADB                            R19 1
       63 GETTABLEKS                       R20 R1 K4 ["Padding"]
       65 GETTABLEKS                       R20 R20 K5 ["XLarge"]
       67 JUMPIFNOT                        R19 ; [+9]
       68 LOADN                            R22 493
       69 ADD                              R24 R13 R20
       70 ADD                              R23 R24 R15
       71 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
       73 GETIMPORT                        R21 K8 [math.max]
       75 CALL                             R21 2 1
       76 JUMP                             ; [+7]
       77 LOADN                            R22 493
       78 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
       80 MOVE                             R23 R15
       81 GETIMPORT                        R21 K8 [math.max]
       83 CALL                             R21 2 1
       84 GETUPVAL                         R22 1
       85 GETTABLEKS                       R22 R22 K1 ["useEffect"]
       87 NEWCLOSURE                       R23 P1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R6
       93 NEWTABLE                         R24 0 2
       95 GETTABLEKS                       R25 R0 K2 ["LoginPluginBridge"]
       97 MOVE                             R26 R4
       98 SETLIST                          R24 R25 2 [1]
      100 CALL                             R22 2 0
      101 JUMPIFNOT                        R5 ; [+3]
      102 GETTABLEKS                       R22 R5 K9 ["Code"]
      104 JUMP                             ; [+1]
      105 LOADK                            R22 K10 ["------"]
      106 LOADK                            R23 K3 [""]
      107 JUMPIFNOT                        R5 ; [+15]
      108 GETTABLEKS                       R24 R5 K11 ["ImagePath"]
      110 JUMPIFEQKS                       R24 K3 [""] ; [+12]
      112 GETUPVAL                         R24 4
      113 GETTABLEKS                       R24 R24 K12 ["new"]
      115 CALL                             R24 0 1
      116 GETTABLEKS                       R24 R24 K13 ["APIS_URL"]
      118 MOVE                             R25 R24
      119 LOADK                            R26 K14 ["auth-token-service"]
      120 GETTABLEKS                       R27 R5 K11 ["ImagePath"]
      122 CONCAT                           R23 R25 R27
      123 GETUPVAL                         R24 1
      124 GETTABLEKS                       R24 R24 K1 ["useEffect"]
      126 NEWCLOSURE                       R25 P2
      127 CAPTURE                          REF R23
      128 CAPTURE                          UPVAL U5
      129 CAPTURE                          VAL R18
      130 NEWTABLE                         R26 0 1
      132 MOVE                             R27 R23
      133 SETLIST                          R26 R27 1 [1]
      135 CALL                             R24 2 0
      136 GETUPVAL                         R24 1
      137 GETTABLEKS                       R24 R24 K15 ["createElement"]
      139 GETUPVAL                         R25 6
      140 DUPTABLE                         R26 K21 [{["Size"], ["AnchorPoint"], ["Position"], ["tag"] = "stroke-emphasis radius-large clip bg-surface-0"}]
      141 GETIMPORT                        R27 K24 [UDim2.fromOffset]
      143 MOVE                             R28 R11
      144 MOVE                             R29 R21
      145 CALL                             R27 2 1
      146 SETTABLEKS                       R27 R26 K16 ["Size"]
      148 JUMPIFNOT                        R19 ; [+6]
      149 GETIMPORT                        R27 K26 [Vector2.new]
      151 LOADK                            R28 K27 [0.5]
      152 LOADN                            R29 0
      153 CALL                             R27 2 1
      154 JUMP                             ; [+5]
      155 GETIMPORT                        R27 K26 [Vector2.new]
      157 LOADK                            R28 K27 [0.5]
      158 LOADK                            R29 K27 [0.5]
      159 CALL                             R27 2 1
      160 SETTABLEKS                       R27 R26 K17 ["AnchorPoint"]
      162 JUMPIFNOT                        R19 ; [+8]
      163 GETIMPORT                        R27 K28 [UDim2.new]
      165 LOADK                            R28 K27 [0.5]
      166 LOADN                            R29 0
      167 LOADN                            R30 0
      168 LOADN                            R31 60
      169 CALL                             R27 4 1
      170 JUMP                             ; [+5]
      171 GETIMPORT                        R27 K30 [UDim2.fromScale]
      173 LOADK                            R28 K27 [0.5]
      174 LOADK                            R29 K27 [0.5]
      175 CALL                             R27 2 1
      176 SETTABLEKS                       R27 R26 K18 ["Position"]
      178 DUPTABLE                         R27 K33 [{"ContentArea", "LoadingPanel"}]
      179 JUMPIFNOT                        R19 ; [+93]
      180 GETUPVAL                         R28 1
      181 GETTABLEKS                       R28 R28 K15 ["createElement"]
      183 GETUPVAL                         R29 6
      184 DUPTABLE                         R30 K36 [{["tag"] = "col align-x-center gap-xlarge size-full-full", ["Visible"]}]
      185 NOT                              R31 R4
      186 SETTABLEKS                       R31 R30 K35 ["Visible"]
      188 DUPTABLE                         R31 K39 [{"TopPanelWrapper", "BottomPanelWrapper"}]
      189 GETUPVAL                         R32 1
      190 GETTABLEKS                       R32 R32 K15 ["createElement"]
      192 GETUPVAL                         R33 6
      193 DUPTABLE                         R34 K42 [{["Size"], ["LayoutOrder"] = 1}]
      194 GETIMPORT                        R35 K28 [UDim2.new]
      196 LOADN                            R36 1
      197 LOADN                            R37 0
      198 LOADN                            R38 0
      199 MOVE                             R39 R13
      200 CALL                             R35 4 1
      201 SETTABLEKS                       R35 R34 K16 ["Size"]
      203 DUPTABLE                         R35 K44 [{"Panel"}]
      204 GETUPVAL                         R36 1
      205 GETTABLEKS                       R36 R36 K15 ["createElement"]
      207 GETUPVAL                         R37 7
      208 DUPTABLE                         R38 K48 [{["isNarrow"] = True, ["onMinHeightChanged"], ["Size"], ["LoginPluginBridge"]}]
      209 SETTABLEKS                       R14 R38 K47 ["onMinHeightChanged"]
      211 GETIMPORT                        R39 K28 [UDim2.new]
      213 LOADN                            R40 1
      214 LOADN                            R41 0
      215 LOADN                            R42 1
      216 LOADN                            R43 0
      217 CALL                             R39 4 1
      218 SETTABLEKS                       R39 R38 K16 ["Size"]
      220 GETTABLEKS                       R39 R0 K2 ["LoginPluginBridge"]
      222 SETTABLEKS                       R39 R38 K2 ["LoginPluginBridge"]
      224 CALL                             R36 2 1
      225 SETTABLEKS                       R36 R35 K43 ["Panel"]
      227 CALL                             R32 3 1
      228 SETTABLEKS                       R32 R31 K37 ["TopPanelWrapper"]
      230 GETUPVAL                         R32 1
      231 GETTABLEKS                       R32 R32 K15 ["createElement"]
      233 GETUPVAL                         R33 6
      234 DUPTABLE                         R34 K50 [{["Size"], ["LayoutOrder"] = 2}]
      235 GETIMPORT                        R35 K28 [UDim2.new]
      237 LOADN                            R36 1
      238 LOADN                            R37 0
      239 LOADN                            R38 0
      240 MOVE                             R39 R15
      241 CALL                             R35 4 1
      242 SETTABLEKS                       R35 R34 K16 ["Size"]
      244 DUPTABLE                         R35 K44 [{"Panel"}]
      245 GETUPVAL                         R36 1
      246 GETTABLEKS                       R36 R36 K15 ["createElement"]
      248 GETUPVAL                         R37 8
      249 DUPTABLE                         R38 K53 [{["code"], ["resolvedQrImage"], ["isNarrow"] = True, ["onMinHeightChanged"], ["Size"]}]
      250 SETTABLEKS                       R22 R38 K51 ["code"]
      252 SETTABLEKS                       R17 R38 K52 ["resolvedQrImage"]
      254 SETTABLEKS                       R16 R38 K47 ["onMinHeightChanged"]
      256 GETIMPORT                        R39 K28 [UDim2.new]
      258 LOADN                            R40 1
      259 LOADN                            R41 0
      260 LOADN                            R42 1
      261 LOADN                            R43 0
      262 CALL                             R39 4 1
      263 SETTABLEKS                       R39 R38 K16 ["Size"]
      265 CALL                             R36 2 1
      266 SETTABLEKS                       R36 R35 K43 ["Panel"]
      268 CALL                             R32 3 1
      269 SETTABLEKS                       R32 R31 K38 ["BottomPanelWrapper"]
      271 CALL                             R28 3 1
      272 JUMP                             ; [+86]
      273 GETUPVAL                         R28 1
      274 GETTABLEKS                       R28 R28 K15 ["createElement"]
      276 GETUPVAL                         R29 6
      277 DUPTABLE                         R30 K54 [{"Position", "Size", "Visible"}]
      278 GETIMPORT                        R31 K24 [UDim2.fromOffset]
      280 LOADN                            R32 0
      281 LOADN                            R33 0
      282 CALL                             R31 2 1
      283 SETTABLEKS                       R31 R30 K18 ["Position"]
      285 GETIMPORT                        R31 K28 [UDim2.new]
      287 LOADN                            R32 1
      288 LOADN                            R33 -48
      289 LOADN                            R34 1
      290 LOADN                            R35 0
      291 CALL                             R31 4 1
      292 SETTABLEKS                       R31 R30 K16 ["Size"]
      294 NOT                              R31 R4
      295 SETTABLEKS                       R31 R30 K35 ["Visible"]
      297 DUPTABLE                         R31 K57 [{"LeftPanel", "RightPanel"}]
      298 GETUPVAL                         R32 1
      299 GETTABLEKS                       R32 R32 K15 ["createElement"]
      301 GETUPVAL                         R33 7
      302 DUPTABLE                         R34 K58 [{"Position", "Size", "LoginPluginBridge"}]
      303 GETIMPORT                        R35 K30 [UDim2.fromScale]
      305 LOADN                            R36 0
      306 LOADN                            R37 0
      307 CALL                             R35 2 1
      308 SETTABLEKS                       R35 R34 K18 ["Position"]
      310 GETIMPORT                        R35 K28 [UDim2.new]
      312 LOADK                            R36 K27 [0.5]
      313 LOADN                            R37 0
      314 LOADN                            R38 1
      315 LOADN                            R39 0
      316 CALL                             R35 4 1
      317 SETTABLEKS                       R35 R34 K16 ["Size"]
      319 GETTABLEKS                       R35 R0 K2 ["LoginPluginBridge"]
      321 SETTABLEKS                       R35 R34 K2 ["LoginPluginBridge"]
      323 CALL                             R32 2 1
      324 SETTABLEKS                       R32 R31 K55 ["LeftPanel"]
      326 GETUPVAL                         R32 1
      327 GETTABLEKS                       R32 R32 K15 ["createElement"]
      329 GETUPVAL                         R33 8
      330 DUPTABLE                         R34 K59 [{"code", "resolvedQrImage", "Position", "Size", "onMinHeightChanged"}]
      331 SETTABLEKS                       R22 R34 K51 ["code"]
      333 SETTABLEKS                       R17 R34 K52 ["resolvedQrImage"]
      335 GETIMPORT                        R35 K28 [UDim2.new]
      337 LOADK                            R36 K27 [0.5]
      338 LOADN                            R37 0
      339 LOADN                            R38 0
      340 LOADN                            R39 0
      341 CALL                             R35 4 1
      342 SETTABLEKS                       R35 R34 K18 ["Position"]
      344 GETIMPORT                        R35 K28 [UDim2.new]
      346 LOADK                            R36 K27 [0.5]
      347 LOADN                            R37 0
      348 LOADN                            R38 1
      349 LOADN                            R39 0
      350 CALL                             R35 4 1
      351 SETTABLEKS                       R35 R34 K16 ["Size"]
      353 SETTABLEKS                       R16 R34 K47 ["onMinHeightChanged"]
      355 CALL                             R32 2 1
      356 SETTABLEKS                       R32 R31 K56 ["RightPanel"]
      358 CALL                             R28 3 1
      359 SETTABLEKS                       R28 R27 K31 ["ContentArea"]
      361 JUMPIFNOT                        R4 ; [+6]
      362 GETUPVAL                         R28 1
      363 GETTABLEKS                       R28 R28 K15 ["createElement"]
      365 GETUPVAL                         R29 9
      366 CALL                             R28 1 1
      367 JUMP                             ; [+1]
      368 LOADNIL                          R28
      369 SETTABLEKS                       R28 R27 K32 ["LoadingPanel"]
      371 CALL                             R24 3 1
      372 GETUPVAL                         R25 1
      373 GETTABLEKS                       R25 R25 K15 ["createElement"]
      375 GETUPVAL                         R26 6
      376 DUPTABLE                         R27 K61 [{"Size", "onAbsoluteSizeChanged"}]
      377 GETIMPORT                        R28 K30 [UDim2.fromScale]
      379 LOADN                            R29 1
      380 LOADN                            R30 1
      381 CALL                             R28 2 1
      382 SETTABLEKS                       R28 R27 K16 ["Size"]
      384 NEWCLOSURE                       R28 P3
      385 CAPTURE                          VAL R10
      386 CAPTURE                          VAL R12
      387 SETTABLEKS                       R28 R27 K60 ["onAbsoluteSizeChanged"]
      389 DUPTABLE                         R28 K65 [{"Background", "ScrollContainer", "Card"}]
      390 GETUPVAL                         R29 1
      391 GETTABLEKS                       R29 R29 K15 ["createElement"]
      393 GETUPVAL                         R30 10
      394 DUPTABLE                         R31 K72 [{["tag"] = "size-full-full", ["Image"] = "rbxasset://textures/LoginPage/Background.png", ["ScaleType"], ["ZIndex"] = 0}]
      395 GETIMPORT                        R32 K75 [Enum.ScaleType.Crop]
      397 SETTABLEKS                       R32 R31 K69 ["ScaleType"]
      399 CALL                             R29 2 1
      400 SETTABLEKS                       R29 R28 K62 ["Background"]
      402 JUMPIFNOT                        R19 ; [+41]
      403 GETUPVAL                         R29 1
      404 GETTABLEKS                       R29 R29 K15 ["createElement"]
      406 GETUPVAL                         R30 11
      407 DUPTABLE                         R31 K77 [{"Size", "scroll"}]
      408 GETIMPORT                        R32 K30 [UDim2.fromScale]
      410 LOADN                            R33 1
      411 LOADN                            R34 1
      412 CALL                             R32 2 1
      413 SETTABLEKS                       R32 R31 K16 ["Size"]
      415 DUPTABLE                         R32 K81 [{"CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      416 GETIMPORT                        R33 K24 [UDim2.fromOffset]
      418 LOADN                            R34 0
      419 ADDK                             R36 R21 K82 [60]
      420 ADDK                             R35 R36 K82 [60]
      421 CALL                             R33 2 1
      422 SETTABLEKS                       R33 R32 K78 ["CanvasSize"]
      424 GETIMPORT                        R33 K84 [Enum.ScrollingDirection.Y]
      426 SETTABLEKS                       R33 R32 K79 ["ScrollingDirection"]
      428 GETUPVAL                         R33 12
      429 GETTABLEKS                       R33 R33 K85 ["Enums"]
      431 GETTABLEKS                       R33 R33 K86 ["Visibility"]
      433 GETTABLEKS                       R33 R33 K87 ["None"]
      435 SETTABLEKS                       R33 R32 K80 ["scrollBarVisibility"]
      437 SETTABLEKS                       R32 R31 K76 ["scroll"]
      439 DUPTABLE                         R32 K88 [{"Card"}]
      440 SETTABLEKS                       R24 R32 K64 ["Card"]
      442 CALL                             R29 3 1
      443 JUMP                             ; [+1]
      444 LOADNIL                          R29
      445 SETTABLEKS                       R29 R28 K63 ["ScrollContainer"]
      447 JUMPIFNOT                        R19 ; [+2]
      448 LOADNIL                          R29
      449 JUMP                             ; [+1]
      450 MOVE                             R29 R24
      451 SETTABLEKS                       R29 R28 K64 ["Card"]
      453 CALL                             R25 3 -1
      454 CLOSEUPVALS                      R23
      455 RETURN                           R25 -1

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
       85 GETTABLEKS                       R18 R0 K29 ["Bin"]
       87 GETTABLEKS                       R18 R18 K30 ["Common"]
       89 GETTABLEKS                       R18 R18 K31 ["defineLuaFlags"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETIMPORT                        R19 K1 [script]
       96 GETTABLEKS                       R19 R19 K32 ["Parent"]
       98 GETTABLEKS                       R19 R19 K33 ["WebSignInPanel"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K5 [require]
      103 GETIMPORT                        R20 K1 [script]
      105 GETTABLEKS                       R20 R20 K32 ["Parent"]
      107 GETTABLEKS                       R20 R20 K34 ["QuickSignInPanel"]
      109 CALL                             R19 1 1
      110 GETTABLEKS                       R20 R15 K35 ["StartPageManager"]
      112 GETIMPORT                        R21 K38 [UDim2.fromOffset]
      114 LOADN                            R22 179
      115 LOADN                            R23 90
      116 CALL                             R21 2 1
      117 GETIMPORT                        R22 K38 [UDim2.fromOffset]
      119 LOADN                            R23 179
      120 LOADN                            R24 22
      121 CALL                             R22 2 1
      122 DUPCLOSURE                       R23 K39 [PROTO_0]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R22
      132 DUPCLOSURE                       R24 K40 [PROTO_1]
      133 DUPCLOSURE                       R25 K41 [PROTO_2]
      134 DUPCLOSURE                       R26 K42 [PROTO_3]
      135 DUPCLOSURE                       R27 K43 [PROTO_22]
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R2
      149 RETURN                           R27 1
