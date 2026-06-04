PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["stack"]
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETTABLEKS                       R2 R1 K0 ["stack"]
        5 GETTABLEKS                       R4 R1 K1 ["message"]
        7 GETTABLEKS                       R5 R0 K1 ["message"]
        9 NAMECALL                         R2 R2 K2 ["gsub"]
       11 CALL                             R2 3 1
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R2 R0 K1 ["message"]
       15 SETTABLEKS                       R2 R0 K0 ["stack"]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R1 R1 K0 ["getElementError"]
        4 GETTABLEKS                       R2 R0 K1 ["message"]
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R1 R1 K1 ["message"]
       10 SETTABLEKS                       R1 R0 K1 ["message"]
       12 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R2 1
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 3
        6 JUMPIF                           R2 ; [+17]
        7 GETUPVAL                         R2 4
        8 GETUPVAL                         R3 5
        9 CALL                             R2 1 0
       10 LOADN                            R4 1
       11 GETUPVAL                         R5 6
       12 LENGTH                           R2 R5
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 GETUPVAL                         R6 6
       16 GETTABLE                         R5 R6 R4
       17 NAMECALL                         R5 R5 K0 ["Disconnect"]
       19 CALL                             R5 1 0
       20 FORNLOOP                         R2
       21 NEWTABLE                         R2 0 0
       23 SETUPVAL                         R2 6
       24 GETUPVAL                         R2 7
       25 GETTABLEKS                       R2 R2 K1 ["toJSBoolean"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 JUMPIFNOT                        R2 ; [+4]
       30 GETUPVAL                         R2 8
       31 MOVE                             R3 R0
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 9
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        4 GETUPVAL                         R2 1
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+27]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 JUMPIF                           R1 ; [+51]
       10 GETTABLEKS                       R1 R0 K1 ["name"]
       12 JUMPIFNOTEQKS                    R1 K2 ["TestingLibraryElementError"] ; [+48]
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R4 R2 K3 ["stack"]
       18 JUMPIFNOT                        R4 ; [+10]
       19 GETTABLEKS                       R3 R2 K3 ["stack"]
       21 GETTABLEKS                       R5 R2 K4 ["message"]
       23 GETTABLEKS                       R6 R1 K4 ["message"]
       25 NAMECALL                         R3 R3 K5 ["gsub"]
       27 CALL                             R3 3 1
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R3 R1 K4 ["message"]
       31 SETTABLEKS                       R3 R1 K3 ["stack"]
       33 JUMP                             ; [+27]
       34 GETUPVAL                         R1 4
       35 GETTABLEKS                       R1 R1 K6 ["new"]
       37 LOADK                            R2 K7 ["Timed out in waitFor."]
       38 CALL                             R1 1 1
       39 MOVE                             R0 R1
       40 GETUPVAL                         R1 2
       41 JUMPIF                           R1 ; [+19]
       42 MOVE                             R1 R0
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R4 R2 K3 ["stack"]
       46 JUMPIFNOT                        R4 ; [+10]
       47 GETTABLEKS                       R3 R2 K3 ["stack"]
       49 GETTABLEKS                       R5 R2 K4 ["message"]
       51 GETTABLEKS                       R6 R1 K4 ["message"]
       53 NAMECALL                         R3 R3 K5 ["gsub"]
       55 CALL                             R3 3 1
       56 JUMP                             ; [+2]
       57 GETTABLEKS                       R3 R1 K4 ["message"]
       59 SETTABLEKS                       R3 R1 K3 ["stack"]
       61 GETUPVAL                         R1 5
       62 GETUPVAL                         R2 6
       63 MOVE                             R3 R0
       64 CALL                             R2 1 1
       65 LOADNIL                          R3
       66 CALL                             R1 2 0
       67 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R1 K0 ["resolved"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R1 K0 ["rejected"]
        1 SETUPVAL                         R1 0
        2 SETUPVAL                         R0 1
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
       11 GETTABLEKS                       R2 R0 K3 ["andThen"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+12]
       17 LOADK                            R1 K4 ["pending"]
       18 SETUPVAL                         R1 3
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U5
       25 NAMECALL                         R1 R0 K3 ["andThen"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 4
       30 LOADNIL                          R2
       31 MOVE                             R3 R0
       32 CALL                             R1 2 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["pending"] ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R0 1 2
       14 JUMPIF                           R0 ; [+1]
       15 SETUPVAL                         R1 5
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+29]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["new"]
        6 LOADK                            R1 K1 ["Changed from using real timers to fake timers while using waitFor. This is not allowed and will result in very strange behavior. Please ensure you're awaiting all async things your test is doing before changing to fake timers. For more info, please go to https://github.com/testing-library/dom-testing-library/issues/830"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 2
        9 JUMPIF                           R1 ; [+18]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R3 R1 K2 ["stack"]
       13 JUMPIFNOT                        R3 ; [+10]
       14 GETTABLEKS                       R2 R1 K2 ["stack"]
       16 GETTABLEKS                       R4 R1 K3 ["message"]
       18 GETTABLEKS                       R5 R0 K3 ["message"]
       20 NAMECALL                         R2 R2 K4 ["gsub"]
       22 CALL                             R2 3 1
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R2 R0 K3 ["message"]
       26 SETTABLEKS                       R2 R0 K2 ["stack"]
       28 GETUPVAL                         R1 4
       29 MOVE                             R2 R0
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1
       32 GETUPVAL                         R0 5
       33 CALL                             R0 0 -1
       34 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["advanceTimersByTime"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K3 [task.defer]
        7 GETIMPORT                        R1 K6 [coroutine.running]
        9 CALL                             R1 0 -1
       10 CALL                             R0 -1 0
       11 GETIMPORT                        R0 K8 [coroutine.yield]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 0
        3 CALL                             R1 2 0
        4 GETIMPORT                        R1 K1 [pcall]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["advanceTimersByTime"]
        9 LOADN                            R3 0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K1 ["expect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R0 R0 K1 ["andThen"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["ChildAdded"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R4 R4 K1 ["Connect"]
        8 CALL                             R4 2 -1
        9 FASTCALL                         TABLE_INSERT ; [+2]
       10 GETIMPORT                        R2 K4 [table.insert]
       12 CALL                             R2 -1 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R4 R0 K5 ["ChildRemoved"]
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R4 R4 K1 ["Connect"]
       20 CALL                             R4 2 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R2 K4 [table.insert]
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADB                            R5 0
        4 LOADK                            R6 K0 ["idle"]
        5 GETUPVAL                         R7 0
        6 CALL                             R7 0 1
        7 NEWTABLE                         R8 0 0
        9 LOADNIL                          R9
       10 NEWCLOSURE                       R10 P0
       11 CAPTURE                          REF R5
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          REF R9
       14 CAPTURE                          VAL R7
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          REF R3
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R11 P1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          REF R2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R10
       28 CAPTURE                          UPVAL U7
       29 GETUPVAL                         R12 8
       30 MOVE                             R13 R11
       31 GETUPVAL                         R14 9
       32 CALL                             R12 2 1
       33 MOVE                             R9 R12
       34 NEWCLOSURE                       R12 P2
       35 CAPTURE                          REF R6
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          UPVAL U11
       38 CAPTURE                          UPVAL U12
       39 CAPTURE                          VAL R10
       40 CAPTURE                          REF R2
       41 NEWCLOSURE                       R13 P3
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R12
       48 JUMPIFNOT                        R7 ; [+93]
       49 GETIMPORT                        R14 K2 [require]
       51 GETUPVAL                         R15 13
       52 GETTABLEKS                       R15 R15 K3 ["JestGlobals"]
       54 CALL                             R14 1 1
       55 GETTABLEKS                       R14 R14 K4 ["jest"]
       57 GETUPVAL                         R15 14
       58 CALL                             R15 0 1
       59 GETTABLEKS                       R15 R15 K5 ["unstable_advanceTimersWrapper"]
       61 JUMPIFNOTEQKS                    R6 K6 ["pending"] ; [+2]
       63 JUMP                             ; [+12]
       64 GETIMPORT                        R16 K8 [pcall]
       66 NEWCLOSURE                       R17 P4
       67 CAPTURE                          UPVAL U10
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          UPVAL U12
       70 CAPTURE                          REF R6
       71 CAPTURE                          VAL R10
       72 CAPTURE                          REF R2
       73 CALL                             R16 1 2
       74 JUMPIF                           R16 ; [+1]
       75 MOVE                             R2 R17
       76 JUMPIF                           R5 ; [+103]
       77 GETUPVAL                         R16 0
       78 CALL                             R16 0 1
       79 JUMPIF                           R16 ; [+30]
       80 GETUPVAL                         R16 6
       81 GETTABLEKS                       R16 R16 K9 ["new"]
       83 LOADK                            R17 K10 ["Changed from using fake timers to real timers while using waitFor. This is not allowed and will result in very strange behavior. Please ensure you're awaiting all async things your test is doing before changing to real timers. For more info, please go to https://github.com/testing-library/dom-testing-library/issues/830"]
       84 CALL                             R16 1 1
       85 GETUPVAL                         R17 4
       86 JUMPIF                           R17 ; [+18]
       87 GETUPVAL                         R17 5
       88 GETTABLEKS                       R19 R17 K11 ["stack"]
       90 JUMPIFNOT                        R19 ; [+10]
       91 GETTABLEKS                       R18 R17 K11 ["stack"]
       93 GETTABLEKS                       R20 R17 K12 ["message"]
       95 GETTABLEKS                       R21 R16 K12 ["message"]
       97 NAMECALL                         R18 R18 K13 ["gsub"]
       99 CALL                             R18 3 1
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R18 R16 K12 ["message"]
      103 SETTABLEKS                       R18 R16 K11 ["stack"]
      105 MOVE                             R17 R1
      106 MOVE                             R18 R16
      107 CALL                             R17 1 0
      108 CLOSEUPVALS                      R2
      109 RETURN                           R0 0
      110 MOVE                             R16 R15
      111 NEWCLOSURE                       R17 P5
      112 CAPTURE                          VAL R14
      113 CAPTURE                          UPVAL U15
      114 CALL                             R16 1 0
      115 JUMPIFNOTEQKS                    R6 K6 ["pending"] ; [+2]
      117 JUMP                             ; [+12]
      118 GETIMPORT                        R16 K8 [pcall]
      120 NEWCLOSURE                       R17 P4
      121 CAPTURE                          UPVAL U10
      122 CAPTURE                          UPVAL U11
      123 CAPTURE                          UPVAL U12
      124 CAPTURE                          REF R6
      125 CAPTURE                          VAL R10
      126 CAPTURE                          REF R2
      127 CALL                             R16 1 2
      128 JUMPIF                           R16 ; [+1]
      129 MOVE                             R2 R17
      130 JUMPIF                           R5 ; [+49]
      131 MOVE                             R16 R15
      132 NEWCLOSURE                       R17 P6
      133 CAPTURE                          UPVAL U16
      134 CAPTURE                          UPVAL U8
      135 CAPTURE                          VAL R14
      136 CALL                             R16 1 1
      137 NAMECALL                         R16 R16 K14 ["expect"]
      139 CALL                             R16 1 0
      140 JUMPBACK                         ; [-65]
      141 JUMP                             ; [+38]
      142 GETIMPORT                        R14 K8 [pcall]
      144 GETUPVAL                         R15 17
      145 GETUPVAL                         R16 18
      146 CALL                             R14 2 2
      147 JUMPIF                           R14 ; [+5]
      148 MOVE                             R16 R1
      149 MOVE                             R17 R15
      150 CALL                             R16 1 0
      151 CLOSEUPVALS                      R2
      152 RETURN                           R0 0
      153 GETUPVAL                         R16 19
      154 MOVE                             R17 R13
      155 GETUPVAL                         R18 15
      156 CALL                             R16 2 1
      157 MOVE                             R3 R16
      158 NEWCLOSURE                       R16 P7
      159 CAPTURE                          REF R8
      160 CAPTURE                          VAL R16
      161 MOVE                             R17 R16
      162 GETUPVAL                         R18 18
      163 MOVE                             R19 R13
      164 CALL                             R17 2 0
      165 JUMPIFNOTEQKS                    R6 K6 ["pending"] ; [+2]
      167 JUMP                             ; [+12]
      168 GETIMPORT                        R17 K8 [pcall]
      170 NEWCLOSURE                       R18 P4
      171 CAPTURE                          UPVAL U10
      172 CAPTURE                          UPVAL U11
      173 CAPTURE                          UPVAL U12
      174 CAPTURE                          REF R6
      175 CAPTURE                          VAL R10
      176 CAPTURE                          REF R2
      177 CALL                             R17 1 2
      178 JUMPIF                           R17 ; [+1]
      179 MOVE                             R2 R18
      180 CLOSEUPVALS                      R2
      181 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["container"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+4]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R1 K0 ["container"]
        9 GETTABLEKS                       R9 R1 K1 ["timeout"]
       11 JUMPIFNOTEQKNIL                  R9 ; [+7]
       13 GETUPVAL                         R9 1
       14 CALL                             R9 0 1
       15 MOVE                             R3 R9
       16 GETTABLEKS                       R3 R3 K2 ["asyncUtilTimeout"]
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R3 R1 K1 ["timeout"]
       21 GETTABLEKS                       R9 R1 K3 ["showOriginalStackTrace"]
       23 JUMPIFNOTEQKNIL                  R9 ; [+7]
       25 GETUPVAL                         R9 1
       26 CALL                             R9 0 1
       27 MOVE                             R4 R9
       28 GETTABLEKS                       R4 R4 K3 ["showOriginalStackTrace"]
       30 JUMP                             ; [+2]
       31 GETTABLEKS                       R4 R1 K3 ["showOriginalStackTrace"]
       33 GETTABLEKS                       R5 R1 K4 ["stackTraceError"]
       35 GETTABLEKS                       R9 R1 K5 ["interval"]
       37 JUMPIFNOTEQKNIL                  R9 ; [+3]
       39 LOADN                            R6 50
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R6 R1 K5 ["interval"]
       43 GETTABLEKS                       R9 R1 K6 ["onTimeout"]
       45 JUMPIFNOTEQKNIL                  R9 ; [+5]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R2
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R7 R1 K6 ["onTimeout"]
       53 GETTABLEKS                       R9 R1 K7 ["mutationObserverOptions"]
       55 JUMPIFNOTEQKNIL                  R9 ; [+15]
       57 DUPTABLE                         R8 K12 [{"subtree", "childList", "attributes", "characterData"}]
       58 LOADB                            R9 1
       59 SETTABLEKS                       R9 R8 K8 ["subtree"]
       61 LOADB                            R9 1
       62 SETTABLEKS                       R9 R8 K9 ["childList"]
       64 LOADB                            R9 1
       65 SETTABLEKS                       R9 R8 K10 ["attributes"]
       67 LOADB                            R9 1
       68 SETTABLEKS                       R9 R8 K11 ["characterData"]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R8 R1 K7 ["mutationObserverOptions"]
       73 GETUPVAL                         R9 2
       74 MOVE                             R10 R0
       75 CALL                             R9 1 1
       76 JUMPIF                           R9 ; [+8]
       77 GETIMPORT                        R9 K14 [error]
       79 GETUPVAL                         R10 3
       80 GETTABLEKS                       R10 R10 K15 ["new"]
       82 LOADK                            R11 K16 ["Received `callback` arg must be a function"]
       83 CALL                             R10 1 -1
       84 CALL                             R9 -1 0
       85 GETUPVAL                         R9 4
       86 GETTABLEKS                       R9 R9 K15 ["new"]
       88 NEWCLOSURE                       R10 P1
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R5
       95 CAPTURE                          UPVAL U9
       96 CAPTURE                          VAL R7
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          VAL R3
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          UPVAL U12
      103 CAPTURE                          UPVAL U1
      104 CAPTURE                          VAL R6
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U13
      107 CAPTURE                          VAL R2
      108 CAPTURE                          UPVAL U14
      109 CALL                             R9 1 -1
      110 RETURN                           R9 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["assign"]
        5 NEWTABLE                         R3 0 0
        7 DUPTABLE                         R4 K2 [{"stackTraceError"}]
        8 GETUPVAL                         R5 3
        9 SETTABLEKS                       R5 R4 K1 ["stackTraceError"]
       11 GETUPVAL                         R5 4
       12 CALL                             R2 3 -1
       13 CALL                             R0 -1 -1
       14 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 LOADK                            R3 K1 ["STACK_TRACE_MESSAGE"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R3 R3 K2 ["asyncWrapper"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETTABLEKS                       R5 R1 K9 ["clearInterval"]
       20 GETTABLEKS                       R6 R1 K10 ["clearTimeout"]
       22 GETTABLEKS                       R7 R1 K11 ["setInterval"]
       24 GETTABLEKS                       R8 R1 K12 ["setTimeout"]
       26 GETIMPORT                        R9 K4 [require]
       28 GETTABLEKS                       R10 R0 K13 ["Promise"]
       30 CALL                             R9 1 1
       31 GETIMPORT                        R10 K4 [require]
       33 GETIMPORT                        R11 K1 [script]
       35 GETTABLEKS                       R11 R11 K2 ["Parent"]
       37 GETTABLEKS                       R11 R11 K14 ["jsHelpers"]
       39 GETTABLEKS                       R11 R11 K15 ["isCallable"]
       41 CALL                             R10 1 1
       42 GETIMPORT                        R11 K4 [require]
       44 GETIMPORT                        R12 K1 [script]
       46 GETTABLEKS                       R12 R12 K2 ["Parent"]
       48 GETTABLEKS                       R12 R12 K14 ["jsHelpers"]
       50 GETTABLEKS                       R12 R12 K16 ["typeError"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K4 [require]
       55 GETIMPORT                        R14 K1 [script]
       57 GETTABLEKS                       R14 R14 K2 ["Parent"]
       59 GETTABLEKS                       R14 R14 K18 ["types"]
       61 GETTABLEKS                       R13 R14 K17 ["wait-for"]
       63 CALL                             R12 1 1
       64 NEWTABLE                         R13 1 0
       66 GETIMPORT                        R14 K4 [require]
       68 GETIMPORT                        R15 K1 [script]
       70 GETTABLEKS                       R15 R15 K2 ["Parent"]
       72 GETTABLEKS                       R15 R15 K19 ["helpers"]
       74 CALL                             R14 1 1
       75 GETTABLEKS                       R15 R14 K20 ["getWindowFromNode"]
       77 GETTABLEKS                       R16 R14 K21 ["getDocument"]
       79 GETTABLEKS                       R17 R14 K22 ["jestFakeTimersAreEnabled"]
       81 GETTABLEKS                       R18 R14 K23 ["checkContainerType"]
       83 GETIMPORT                        R19 K4 [require]
       85 GETIMPORT                        R20 K1 [script]
       87 GETTABLEKS                       R20 R20 K2 ["Parent"]
       89 GETTABLEKS                       R20 R20 K24 ["config"]
       91 CALL                             R19 1 1
       92 GETTABLEKS                       R20 R19 K25 ["getConfig"]
       94 GETTABLEKS                       R21 R19 K26 ["runWithExpensiveErrorDiagnosticsDisabled"]
       96 DUPCLOSURE                       R22 K27 [PROTO_0]
       97 DUPCLOSURE                       R23 K28 [PROTO_17]
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R20
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R21
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R7
      113 DUPCLOSURE                       R24 K29 [PROTO_19]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R23
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R24 R13 K30 ["waitFor"]
      120 RETURN                           R13 1
