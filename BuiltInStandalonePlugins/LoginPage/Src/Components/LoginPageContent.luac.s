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
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K1 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+19]
        7 JUMPIFNOT                        R1 ; [+18]
        8 GETUPVAL                         R2 1
        9 JUMPIF                           R2 ; [+16]
       10 GETUPVAL                         R2 2
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R0 0
       13 LOADB                            R2 1
       14 SETUPVAL                         R2 2
       15 GETUPVAL                         R2 3
       16 JUMPIFNOT                        R2 ; [+6]
       17 GETIMPORT                        R2 K4 [task.cancel]
       19 GETUPVAL                         R3 3
       20 CALL                             R2 1 0
       21 LOADNIL                          R2
       22 SETUPVAL                         R2 3
       23 GETUPVAL                         R2 4
       24 LOADB                            R3 1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

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
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          UPVAL U2
       19 FASTPCALL                        pcall 1 ; [+2]
       20 GETIMPORT                        R7 K3 [pcall]
       22 CALL                             R7 1 2
       23 JUMPIFNOT                        R7 ; [+6]
       24 JUMPIFNOT                        R8 ; [+5]
       25 MOVE                             R11 R6
       26 NAMECALL                         R9 R8 K4 ["Connect"]
       28 CALL                             R9 2 1
       29 MOVE                             R0 R9
       30 LOADN                            R9 0
       31 JUMPIFNOTLT                      R9 R4 ; [+13]
       33 GETIMPORT                        R9 K7 [task.delay]
       35 MOVE                             R10 R4
       36 NEWCLOSURE                       R11 P2
       37 CAPTURE                          REF R1
       38 CAPTURE                          REF R2
       39 CAPTURE                          REF R3
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U1
       43 CALL                             R9 2 1
       44 MOVE                             R1 R9
       45 GETIMPORT                        R9 K9 [task.spawn]
       47 NEWCLOSURE                       R10 P3
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          REF R2
       50 CAPTURE                          REF R3
       51 CAPTURE                          REF R1
       52 CAPTURE                          UPVAL U1
       53 CALL                             R9 1 0
       54 NEWCLOSURE                       R9 P4
       55 CAPTURE                          REF R2
       56 CAPTURE                          REF R0
       57 CAPTURE                          REF R1
       58 CLOSEUPVALS                      R0
       59 RETURN                           R9 1

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
        1 JUMPIF                           R0 ; [+173]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K1 [pcall]
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+2]
        9 MOVE                             R2 R1
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K2 [""]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U1
       14 FASTPCALL                        pcall 1 ; [+2]
       15 GETIMPORT                        R3 K1 [pcall]
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 0
       19 JUMPIFNOT                        R5 ; [+1]
       20 RETURN                           R0 0
       21 JUMPIF                           R3 ; [+18]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K3 ["reportCodeCreatedFailed"]
       25 MOVE                             R6 R2
       26 FASTCALL1                        TOSTRING R4 ; [+3]
       27 MOVE                             R8 R4
       28 GETIMPORT                        R7 K5 [tostring]
       30 CALL                             R7 1 1
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 3
       33 FASTCALL1                        TOSTRING R4 ; [+3]
       34 MOVE                             R7 R4
       35 GETIMPORT                        R6 K5 [tostring]
       37 CALL                             R6 1 1
       38 CALL                             R5 1 0
       39 RETURN                           R0 0
       40 JUMPIFNOT                        R4 ; [+13]
       41 GETTABLEKS                       R5 R4 K6 ["Code"]
       43 JUMPIFNOT                        R5 ; [+10]
       44 GETTABLEKS                       R5 R4 K6 ["Code"]
       46 JUMPIFEQKS                       R5 K2 [""] ; [+7]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K7 ["reportCodeCreatedSuccess"]
       51 MOVE                             R6 R2
       52 CALL                             R5 1 0
       53 JUMP                             ; [+5]
       54 GETUPVAL                         R5 2
       55 GETTABLEKS                       R5 R5 K3 ["reportCodeCreatedFailed"]
       57 MOVE                             R6 R2
       58 CALL                             R5 1 0
       59 GETUPVAL                         R5 4
       60 MOVE                             R6 R4
       61 CALL                             R5 1 0
       62 NEWCLOSURE                       R6 P2
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R4
       65 FASTPCALL                        pcall 1 ; [+2]
       66 GETIMPORT                        R5 K1 [pcall]
       68 CALL                             R5 1 2
       69 GETUPVAL                         R7 0
       70 JUMPIFNOT                        R7 ; [+1]
       71 RETURN                           R0 0
       72 JUMPIF                           R5 ; [+20]
       73 GETUPVAL                         R7 2
       74 GETTABLEKS                       R7 R7 K8 ["reportAwaitResultErrored"]
       76 MOVE                             R8 R2
       77 FASTCALL1                        TOSTRING R6 ; [+3]
       78 MOVE                             R10 R6
       79 GETIMPORT                        R9 K5 [tostring]
       81 CALL                             R9 1 1
       82 CALL                             R7 2 0
       83 GETUPVAL                         R7 3
       84 LOADK                            R9 K9 ["Quick sign-in failed: "]
       85 FASTCALL1                        TOSTRING R6 ; [+3]
       86 MOVE                             R11 R6
       87 GETIMPORT                        R10 K5 [tostring]
       89 CALL                             R10 1 1
       90 CONCAT                           R8 R9 R10
       91 CALL                             R7 1 0
       92 RETURN                           R0 0
       93 GETTABLEKS                       R7 R6 K10 ["resultType"]
       95 JUMPIFNOTEQKS                    R7 K11 ["Validated"] ; [+40]
       97 GETUPVAL                         R8 2
       98 GETTABLEKS                       R8 R8 K12 ["reportAwaitResultValidated"]
      100 MOVE                             R9 R2
      101 CALL                             R8 1 0
      102 NEWCLOSURE                       R9 P3
      103 CAPTURE                          UPVAL U1
      104 FASTPCALL                        pcall 1 ; [+2]
      105 GETIMPORT                        R8 K1 [pcall]
      107 CALL                             R8 1 2
      108 JUMPIFNOT                        R8 ; [+6]
      109 GETUPVAL                         R10 2
      110 GETTABLEKS                       R10 R10 K13 ["reportRestartSucceeded"]
      112 MOVE                             R11 R2
      113 CALL                             R10 1 0
      114 RETURN                           R0 0
      115 GETUPVAL                         R10 2
      116 GETTABLEKS                       R10 R10 K14 ["reportRestartFailed"]
      118 MOVE                             R11 R2
      119 FASTCALL1                        TOSTRING R9 ; [+3]
      120 MOVE                             R13 R9
      121 GETIMPORT                        R12 K5 [tostring]
      123 CALL                             R12 1 1
      124 CALL                             R10 2 0
      125 GETIMPORT                        R10 K16 [print]
      127 LOADK                            R12 K17 ["[LoginPage] RestartAutomaticLoginWithNewCookieAsync failed: "]
      128 FASTCALL1                        TOSTRING R9 ; [+3]
      129 MOVE                             R14 R9
      130 GETIMPORT                        R13 K5 [tostring]
      132 CALL                             R13 1 1
      133 CONCAT                           R11 R12 R13
      134 CALL                             R10 1 0
      135 RETURN                           R0 0
      136 JUMPIFNOTEQKS                    R7 K18 ["Cancelled"] ; [+7]
      138 GETUPVAL                         R8 2
      139 GETTABLEKS                       R8 R8 K19 ["reportAwaitResultCancelled"]
      141 MOVE                             R9 R2
      142 CALL                             R8 1 0
      143 JUMP                             ; [+30]
      144 JUMPIFNOTEQKS                    R7 K20 ["Expired"] ; [+7]
      146 GETUPVAL                         R8 2
      147 GETTABLEKS                       R8 R8 K21 ["reportAwaitResultExpired"]
      149 MOVE                             R9 R2
      150 CALL                             R8 1 0
      151 JUMP                             ; [+22]
      152 GETUPVAL                         R8 2
      153 GETTABLEKS                       R8 R8 K8 ["reportAwaitResultErrored"]
      155 MOVE                             R9 R2
      156 LOADK                            R11 K22 ["unexpected resultType: "]
      157 FASTCALL1                        TOSTRING R7 ; [+3]
      158 MOVE                             R13 R7
      159 GETIMPORT                        R12 K5 [tostring]
      161 CALL                             R12 1 1
      162 CONCAT                           R10 R11 R12
      163 CALL                             R8 2 0
      164 GETUPVAL                         R8 3
      165 LOADK                            R10 K23 ["Quick sign-in ended: "]
      166 FASTCALL1                        TOSTRING R7 ; [+3]
      167 MOVE                             R12 R7
      168 GETIMPORT                        R11 K5 [tostring]
      170 CALL                             R11 1 1
      171 CONCAT                           R9 R10 R11
      172 CALL                             R8 1 0
      173 RETURN                           R0 0
      174 JUMPBACK                         ; [-175]
      175 RETURN                           R0 0

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
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K3 ["useImage"]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K4 ["BACKGROUND_IMAGE"]
       29 GETIMPORT                        R7 K8 [Enum.ScaleType.Crop]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K0 ["useState"]
       35 LOADNIL                          R7
       36 CALL                             R6 1 2
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K0 ["useState"]
       40 LOADNIL                          R9
       41 CALL                             R8 1 2
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K0 ["useState"]
       45 LOADN                            R11 720
       46 CALL                             R10 1 2
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K0 ["useState"]
       50 LOADN                            R13 880
       51 CALL                             R12 1 2
       52 GETUPVAL                         R14 1
       53 GETTABLEKS                       R14 R14 K0 ["useState"]
       55 LOADN                            R15 0
       56 CALL                             R14 1 2
       57 GETUPVAL                         R16 1
       58 GETTABLEKS                       R16 R16 K0 ["useState"]
       60 LOADN                            R17 0
       61 CALL                             R16 1 2
       62 GETUPVAL                         R18 1
       63 GETTABLEKS                       R18 R18 K0 ["useState"]
       65 LOADK                            R19 K9 [""]
       66 CALL                             R18 1 2
       67 LOADN                            R21 850
       68 JUMPIFLT                         R10 R21 ; [+2]
       70 LOADB                            R20 0 +1
       71 LOADB                            R20 1
       72 GETTABLEKS                       R21 R1 K10 ["Padding"]
       74 GETTABLEKS                       R21 R21 K11 ["XLarge"]
       76 JUMPIFNOT                        R20 ; [+9]
       77 LOADN                            R23 493
       78 ADD                              R25 R14 R21
       79 ADD                              R24 R25 R16
       80 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
       82 GETIMPORT                        R22 K14 [math.max]
       84 CALL                             R22 2 1
       85 JUMP                             ; [+7]
       86 LOADN                            R23 493
       87 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
       89 MOVE                             R24 R16
       90 GETIMPORT                        R22 K14 [math.max]
       92 CALL                             R22 2 1
       93 GETUPVAL                         R23 1
       94 GETTABLEKS                       R23 R23 K1 ["useEffect"]
       96 NEWCLOSURE                       R24 P1
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 NEWTABLE                         R25 0 2
      104 GETTABLEKS                       R26 R0 K2 ["LoginPluginBridge"]
      106 MOVE                             R27 R4
      107 SETLIST                          R25 R26 2 [1]
      109 CALL                             R23 2 0
      110 JUMPIFNOT                        R6 ; [+3]
      111 GETTABLEKS                       R23 R6 K15 ["Code"]
      113 JUMP                             ; [+1]
      114 LOADK                            R23 K16 ["------"]
      115 LOADK                            R24 K9 [""]
      116 JUMPIFNOT                        R6 ; [+15]
      117 GETTABLEKS                       R25 R6 K17 ["ImagePath"]
      119 JUMPIFEQKS                       R25 K9 [""] ; [+12]
      121 GETUPVAL                         R25 5
      122 GETTABLEKS                       R25 R25 K18 ["new"]
      124 CALL                             R25 0 1
      125 GETTABLEKS                       R25 R25 K19 ["APIS_URL"]
      127 MOVE                             R26 R25
      128 LOADK                            R27 K20 ["auth-token-service"]
      129 GETTABLEKS                       R28 R6 K17 ["ImagePath"]
      131 CONCAT                           R24 R26 R28
      132 GETUPVAL                         R25 1
      133 GETTABLEKS                       R25 R25 K1 ["useEffect"]
      135 NEWCLOSURE                       R26 P2
      136 CAPTURE                          REF R24
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          VAL R19
      139 NEWTABLE                         R27 0 1
      141 MOVE                             R28 R24
      142 SETLIST                          R27 R28 1 [1]
      144 CALL                             R25 2 0
      145 GETUPVAL                         R25 1
      146 GETTABLEKS                       R25 R25 K21 ["createElement"]
      148 GETUPVAL                         R26 7
      149 DUPTABLE                         R27 K27 [{["Size"], ["AnchorPoint"], ["Position"], ["tag"] = "stroke-emphasis radius-large clip bg-surface-0"}]
      150 GETIMPORT                        R28 K30 [UDim2.fromOffset]
      152 MOVE                             R29 R12
      153 MOVE                             R30 R22
      154 CALL                             R28 2 1
      155 SETTABLEKS                       R28 R27 K22 ["Size"]
      157 JUMPIFNOT                        R20 ; [+6]
      158 GETIMPORT                        R28 K32 [Vector2.new]
      160 LOADK                            R29 K33 [0.5]
      161 LOADN                            R30 0
      162 CALL                             R28 2 1
      163 JUMP                             ; [+5]
      164 GETIMPORT                        R28 K32 [Vector2.new]
      166 LOADK                            R29 K33 [0.5]
      167 LOADK                            R30 K33 [0.5]
      168 CALL                             R28 2 1
      169 SETTABLEKS                       R28 R27 K23 ["AnchorPoint"]
      171 JUMPIFNOT                        R20 ; [+8]
      172 GETIMPORT                        R28 K34 [UDim2.new]
      174 LOADK                            R29 K33 [0.5]
      175 LOADN                            R30 0
      176 LOADN                            R31 0
      177 LOADN                            R32 60
      178 CALL                             R28 4 1
      179 JUMP                             ; [+5]
      180 GETIMPORT                        R28 K36 [UDim2.fromScale]
      182 LOADK                            R29 K33 [0.5]
      183 LOADK                            R30 K33 [0.5]
      184 CALL                             R28 2 1
      185 SETTABLEKS                       R28 R27 K24 ["Position"]
      187 DUPTABLE                         R28 K39 [{"ContentArea", "LoadingPanel"}]
      188 JUMPIFNOT                        R20 ; [+93]
      189 GETUPVAL                         R29 1
      190 GETTABLEKS                       R29 R29 K21 ["createElement"]
      192 GETUPVAL                         R30 7
      193 DUPTABLE                         R31 K42 [{["tag"] = "col align-x-center gap-xlarge size-full-full", ["Visible"]}]
      194 NOT                              R32 R4
      195 SETTABLEKS                       R32 R31 K41 ["Visible"]
      197 DUPTABLE                         R32 K45 [{"TopPanelWrapper", "BottomPanelWrapper"}]
      198 GETUPVAL                         R33 1
      199 GETTABLEKS                       R33 R33 K21 ["createElement"]
      201 GETUPVAL                         R34 7
      202 DUPTABLE                         R35 K48 [{["Size"], ["LayoutOrder"] = 1}]
      203 GETIMPORT                        R36 K34 [UDim2.new]
      205 LOADN                            R37 1
      206 LOADN                            R38 0
      207 LOADN                            R39 0
      208 MOVE                             R40 R14
      209 CALL                             R36 4 1
      210 SETTABLEKS                       R36 R35 K22 ["Size"]
      212 DUPTABLE                         R36 K50 [{"Panel"}]
      213 GETUPVAL                         R37 1
      214 GETTABLEKS                       R37 R37 K21 ["createElement"]
      216 GETUPVAL                         R38 8
      217 DUPTABLE                         R39 K54 [{["isNarrow"] = True, ["onMinHeightChanged"], ["Size"], ["LoginPluginBridge"]}]
      218 SETTABLEKS                       R15 R39 K53 ["onMinHeightChanged"]
      220 GETIMPORT                        R40 K34 [UDim2.new]
      222 LOADN                            R41 1
      223 LOADN                            R42 0
      224 LOADN                            R43 1
      225 LOADN                            R44 0
      226 CALL                             R40 4 1
      227 SETTABLEKS                       R40 R39 K22 ["Size"]
      229 GETTABLEKS                       R40 R0 K2 ["LoginPluginBridge"]
      231 SETTABLEKS                       R40 R39 K2 ["LoginPluginBridge"]
      233 CALL                             R37 2 1
      234 SETTABLEKS                       R37 R36 K49 ["Panel"]
      236 CALL                             R33 3 1
      237 SETTABLEKS                       R33 R32 K43 ["TopPanelWrapper"]
      239 GETUPVAL                         R33 1
      240 GETTABLEKS                       R33 R33 K21 ["createElement"]
      242 GETUPVAL                         R34 7
      243 DUPTABLE                         R35 K56 [{["Size"], ["LayoutOrder"] = 2}]
      244 GETIMPORT                        R36 K34 [UDim2.new]
      246 LOADN                            R37 1
      247 LOADN                            R38 0
      248 LOADN                            R39 0
      249 MOVE                             R40 R16
      250 CALL                             R36 4 1
      251 SETTABLEKS                       R36 R35 K22 ["Size"]
      253 DUPTABLE                         R36 K50 [{"Panel"}]
      254 GETUPVAL                         R37 1
      255 GETTABLEKS                       R37 R37 K21 ["createElement"]
      257 GETUPVAL                         R38 9
      258 DUPTABLE                         R39 K59 [{["code"], ["resolvedQrImage"], ["isNarrow"] = True, ["onMinHeightChanged"], ["Size"]}]
      259 SETTABLEKS                       R23 R39 K57 ["code"]
      261 SETTABLEKS                       R18 R39 K58 ["resolvedQrImage"]
      263 SETTABLEKS                       R17 R39 K53 ["onMinHeightChanged"]
      265 GETIMPORT                        R40 K34 [UDim2.new]
      267 LOADN                            R41 1
      268 LOADN                            R42 0
      269 LOADN                            R43 1
      270 LOADN                            R44 0
      271 CALL                             R40 4 1
      272 SETTABLEKS                       R40 R39 K22 ["Size"]
      274 CALL                             R37 2 1
      275 SETTABLEKS                       R37 R36 K49 ["Panel"]
      277 CALL                             R33 3 1
      278 SETTABLEKS                       R33 R32 K44 ["BottomPanelWrapper"]
      280 CALL                             R29 3 1
      281 JUMP                             ; [+86]
      282 GETUPVAL                         R29 1
      283 GETTABLEKS                       R29 R29 K21 ["createElement"]
      285 GETUPVAL                         R30 7
      286 DUPTABLE                         R31 K60 [{"Position", "Size", "Visible"}]
      287 GETIMPORT                        R32 K30 [UDim2.fromOffset]
      289 LOADN                            R33 0
      290 LOADN                            R34 0
      291 CALL                             R32 2 1
      292 SETTABLEKS                       R32 R31 K24 ["Position"]
      294 GETIMPORT                        R32 K34 [UDim2.new]
      296 LOADN                            R33 1
      297 LOADN                            R34 -48
      298 LOADN                            R35 1
      299 LOADN                            R36 0
      300 CALL                             R32 4 1
      301 SETTABLEKS                       R32 R31 K22 ["Size"]
      303 NOT                              R32 R4
      304 SETTABLEKS                       R32 R31 K41 ["Visible"]
      306 DUPTABLE                         R32 K63 [{"LeftPanel", "RightPanel"}]
      307 GETUPVAL                         R33 1
      308 GETTABLEKS                       R33 R33 K21 ["createElement"]
      310 GETUPVAL                         R34 8
      311 DUPTABLE                         R35 K64 [{"Position", "Size", "LoginPluginBridge"}]
      312 GETIMPORT                        R36 K36 [UDim2.fromScale]
      314 LOADN                            R37 0
      315 LOADN                            R38 0
      316 CALL                             R36 2 1
      317 SETTABLEKS                       R36 R35 K24 ["Position"]
      319 GETIMPORT                        R36 K34 [UDim2.new]
      321 LOADK                            R37 K33 [0.5]
      322 LOADN                            R38 0
      323 LOADN                            R39 1
      324 LOADN                            R40 0
      325 CALL                             R36 4 1
      326 SETTABLEKS                       R36 R35 K22 ["Size"]
      328 GETTABLEKS                       R36 R0 K2 ["LoginPluginBridge"]
      330 SETTABLEKS                       R36 R35 K2 ["LoginPluginBridge"]
      332 CALL                             R33 2 1
      333 SETTABLEKS                       R33 R32 K61 ["LeftPanel"]
      335 GETUPVAL                         R33 1
      336 GETTABLEKS                       R33 R33 K21 ["createElement"]
      338 GETUPVAL                         R34 9
      339 DUPTABLE                         R35 K65 [{"code", "resolvedQrImage", "Position", "Size", "onMinHeightChanged"}]
      340 SETTABLEKS                       R23 R35 K57 ["code"]
      342 SETTABLEKS                       R18 R35 K58 ["resolvedQrImage"]
      344 GETIMPORT                        R36 K34 [UDim2.new]
      346 LOADK                            R37 K33 [0.5]
      347 LOADN                            R38 0
      348 LOADN                            R39 0
      349 LOADN                            R40 0
      350 CALL                             R36 4 1
      351 SETTABLEKS                       R36 R35 K24 ["Position"]
      353 GETIMPORT                        R36 K34 [UDim2.new]
      355 LOADK                            R37 K33 [0.5]
      356 LOADN                            R38 0
      357 LOADN                            R39 1
      358 LOADN                            R40 0
      359 CALL                             R36 4 1
      360 SETTABLEKS                       R36 R35 K22 ["Size"]
      362 SETTABLEKS                       R17 R35 K53 ["onMinHeightChanged"]
      364 CALL                             R33 2 1
      365 SETTABLEKS                       R33 R32 K62 ["RightPanel"]
      367 CALL                             R29 3 1
      368 SETTABLEKS                       R29 R28 K37 ["ContentArea"]
      370 JUMPIFNOT                        R4 ; [+6]
      371 GETUPVAL                         R29 1
      372 GETTABLEKS                       R29 R29 K21 ["createElement"]
      374 GETUPVAL                         R30 10
      375 CALL                             R29 1 1
      376 JUMP                             ; [+1]
      377 LOADNIL                          R29
      378 SETTABLEKS                       R29 R28 K38 ["LoadingPanel"]
      380 CALL                             R25 3 1
      381 GETUPVAL                         R26 1
      382 GETTABLEKS                       R26 R26 K21 ["createElement"]
      384 GETUPVAL                         R27 7
      385 DUPTABLE                         R28 K67 [{"Size", "onAbsoluteSizeChanged"}]
      386 GETIMPORT                        R29 K36 [UDim2.fromScale]
      388 LOADN                            R30 1
      389 LOADN                            R31 1
      390 CALL                             R29 2 1
      391 SETTABLEKS                       R29 R28 K22 ["Size"]
      393 NEWCLOSURE                       R29 P3
      394 CAPTURE                          VAL R11
      395 CAPTURE                          VAL R13
      396 SETTABLEKS                       R29 R28 K66 ["onAbsoluteSizeChanged"]
      398 DUPTABLE                         R29 K71 [{"Background", "ScrollContainer", "Card"}]
      399 GETUPVAL                         R31 2
      400 GETTABLEKS                       R31 R31 K72 ["getFFlagLoginPageEnableBlankImageFallback"]
      402 CALL                             R31 0 1
      403 JUMPIFNOT                        R31 ; [+19]
      404 GETUPVAL                         R30 1
      405 GETTABLEKS                       R30 R30 K21 ["createElement"]
      407 GETUPVAL                         R31 11
      408 DUPTABLE                         R32 K78 [{["tag"] = "size-full-full", ["Image"], ["ImageContent"], ["ScaleType"], ["ZIndex"] = 0}]
      409 GETTABLEKS                       R33 R5 K74 ["Image"]
      411 SETTABLEKS                       R33 R32 K74 ["Image"]
      413 GETTABLEKS                       R33 R5 K75 ["ImageContent"]
      415 SETTABLEKS                       R33 R32 K75 ["ImageContent"]
      417 GETTABLEKS                       R33 R5 K6 ["ScaleType"]
      419 SETTABLEKS                       R33 R32 K6 ["ScaleType"]
      421 CALL                             R30 2 1
      422 JUMP                             ; [+15]
      423 GETUPVAL                         R30 1
      424 GETTABLEKS                       R30 R30 K21 ["createElement"]
      426 GETUPVAL                         R31 11
      427 DUPTABLE                         R32 K79 [{["tag"] = "size-full-full", ["Image"], ["ScaleType"], ["ZIndex"] = 0}]
      428 GETUPVAL                         R33 4
      429 GETTABLEKS                       R33 R33 K4 ["BACKGROUND_IMAGE"]
      431 SETTABLEKS                       R33 R32 K74 ["Image"]
      433 GETIMPORT                        R33 K8 [Enum.ScaleType.Crop]
      435 SETTABLEKS                       R33 R32 K6 ["ScaleType"]
      437 CALL                             R30 2 1
      438 SETTABLEKS                       R30 R29 K68 ["Background"]
      440 JUMPIFNOT                        R20 ; [+41]
      441 GETUPVAL                         R30 1
      442 GETTABLEKS                       R30 R30 K21 ["createElement"]
      444 GETUPVAL                         R31 12
      445 DUPTABLE                         R32 K81 [{"Size", "scroll"}]
      446 GETIMPORT                        R33 K36 [UDim2.fromScale]
      448 LOADN                            R34 1
      449 LOADN                            R35 1
      450 CALL                             R33 2 1
      451 SETTABLEKS                       R33 R32 K22 ["Size"]
      453 DUPTABLE                         R33 K85 [{"CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      454 GETIMPORT                        R34 K30 [UDim2.fromOffset]
      456 LOADN                            R35 0
      457 ADDK                             R37 R22 K86 [60]
      458 ADDK                             R36 R37 K86 [60]
      459 CALL                             R34 2 1
      460 SETTABLEKS                       R34 R33 K82 ["CanvasSize"]
      462 GETIMPORT                        R34 K88 [Enum.ScrollingDirection.Y]
      464 SETTABLEKS                       R34 R33 K83 ["ScrollingDirection"]
      466 GETUPVAL                         R34 13
      467 GETTABLEKS                       R34 R34 K89 ["Enums"]
      469 GETTABLEKS                       R34 R34 K90 ["Visibility"]
      471 GETTABLEKS                       R34 R34 K91 ["None"]
      473 SETTABLEKS                       R34 R33 K84 ["scrollBarVisibility"]
      475 SETTABLEKS                       R33 R32 K80 ["scroll"]
      477 DUPTABLE                         R33 K92 [{"Card"}]
      478 SETTABLEKS                       R25 R33 K70 ["Card"]
      480 CALL                             R30 3 1
      481 JUMP                             ; [+1]
      482 LOADNIL                          R30
      483 SETTABLEKS                       R30 R29 K69 ["ScrollContainer"]
      485 JUMPIFNOT                        R20 ; [+2]
      486 LOADNIL                          R30
      487 JUMP                             ; [+1]
      488 MOVE                             R30 R25
      489 SETTABLEKS                       R30 R29 K70 ["Card"]
      491 CALL                             R26 3 -1
      492 CLOSEUPVALS                      R24
      493 RETURN                           R26 -1

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
       85 GETTABLEKS                       R18 R0 K25 ["Src"]
       87 GETTABLEKS                       R18 R18 K26 ["Util"]
       89 GETTABLEKS                       R18 R18 K29 ["LoginPageImages"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETTABLEKS                       R19 R0 K30 ["Bin"]
       96 GETTABLEKS                       R19 R19 K31 ["Common"]
       98 GETTABLEKS                       R19 R19 K32 ["defineLuaFlags"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K5 [require]
      103 GETIMPORT                        R20 K1 [script]
      105 GETTABLEKS                       R20 R20 K33 ["Parent"]
      107 GETTABLEKS                       R20 R20 K34 ["WebSignInPanel"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K5 [require]
      112 GETIMPORT                        R21 K1 [script]
      114 GETTABLEKS                       R21 R21 K33 ["Parent"]
      116 GETTABLEKS                       R21 R21 K35 ["QuickSignInPanel"]
      118 CALL                             R20 1 1
      119 GETTABLEKS                       R21 R15 K36 ["StartPageManager"]
      121 GETIMPORT                        R22 K39 [UDim2.fromOffset]
      123 LOADN                            R23 179
      124 LOADN                            R24 90
      125 CALL                             R22 2 1
      126 GETIMPORT                        R23 K39 [UDim2.fromOffset]
      128 LOADN                            R24 179
      129 LOADN                            R25 22
      130 CALL                             R23 2 1
      131 DUPCLOSURE                       R24 K40 [PROTO_0]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R23
      141 DUPCLOSURE                       R25 K41 [PROTO_1]
      142 DUPCLOSURE                       R26 K42 [PROTO_2]
      143 DUPCLOSURE                       R27 K43 [PROTO_3]
      144 DUPCLOSURE                       R28 K44 [PROTO_22]
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R2
      159 RETURN                           R28 1
