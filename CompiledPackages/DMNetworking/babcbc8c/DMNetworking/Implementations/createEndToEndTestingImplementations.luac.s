PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["triggerEvent"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R4 3
        6 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
        7 GETIMPORT                        R3 K3 [table.unpack]
        9 CALL                             R3 1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["FireEvent called before target was set"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETIMPORT                        R3 K5 [table.pack]
       14 GETVARARGS                       R4 -1
       15 CALL                             R3 -1 1
       16 GETUPVAL                         R5 1
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       24 GETIMPORT                        R4 K7 [table.insert]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [coroutine.resume]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K3 ["invokeAsync"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R6 4
        9 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       10 GETIMPORT                        R5 K6 [table.unpack]
       12 CALL                             R5 1 -1
       13 CALL                             R2 -1 -1
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Invoke called before target was set"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETIMPORT                        R3 K5 [table.pack]
       14 GETVARARGS                       R4 -1
       15 CALL                             R3 -1 1
       16 GETIMPORT                        R4 K8 [coroutine.running]
       18 CALL                             R4 0 1
       19 GETUPVAL                         R6 1
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       28 GETIMPORT                        R5 K10 [table.insert]
       30 CALL                             R5 2 0
       31 GETIMPORT                        R5 K12 [coroutine.yield]
       33 CALL                             R5 0 -1
       34 RETURN                           R5 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling callback of OnEvent on wrong scope"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPCLOSURE                       R3 K0 [PROTO_5]
        3 NEWCLOSURE                       R4 P1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 RETURN                           R3 2

PROTO_8:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 MOVE                             R4 R0
        5 GETVARARGS                       R5 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 LOADNIL                          R4
        5 RETURN                           R3 2

PROTO_10:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling callback of OnInvoke on wrong scope"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPCLOSURE                       R3 K0 [PROTO_10]
        3 NEWCLOSURE                       R4 P1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 RETURN                           R3 2

PROTO_13:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 MOVE                             R4 R0
        5 GETVARARGS                       R5 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 LOADNIL                          R4
        5 RETURN                           R3 2

PROTO_15:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling wrong Fire method"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling wrong Invoke method"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_19:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 MOVE                             R3 R2
        7 MOVE                             R4 R1
        8 GETVARARGS                       R5 -1
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_20:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        9 LOADK                            R5 K0 ["No callback for that Invoke"]
       10 GETIMPORT                        R3 K2 [assert]
       12 CALL                             R3 2 0
       13 MOVE                             R3 R2
       14 MOVE                             R4 R1
       15 GETVARARGS                       R5 -1
       16 CALL                             R3 -1 -1
       17 RETURN                           R3 -1

PROTO_21:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 JUMPIFEQKS                       R0 K0 ["guest"] ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 JUMPIFEQKS                       R0 K1 ["host"] ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 0 0
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          REF R2
       17 CAPTURE                          VAL R1
       18 NEWCLOSURE                       R9 P2
       19 CAPTURE                          REF R2
       20 CAPTURE                          VAL R1
       21 NEWCLOSURE                       R10 P3
       22 CAPTURE                          VAL R6
       23 NEWCLOSURE                       R11 P4
       24 CAPTURE                          VAL R8
       25 NEWCLOSURE                       R12 P5
       26 CAPTURE                          VAL R7
       27 NEWCLOSURE                       R13 P6
       28 CAPTURE                          VAL R9
       29 DUPCLOSURE                       R14 K2 [PROTO_15]
       30 DUPCLOSURE                       R15 K3 [PROTO_16]
       31 GETUPVAL                         R16 0
       32 GETTABLEKS                       R16 R16 K4 ["new"]
       34 DUPTABLE                         R17 K15 [{"IsGuest", "IsHost", "OnGuestEvent", "OnHostEvent", "OnGuestInvokeAsync", "OnHostInvokeAsync", "FireGuest", "FireHost", "InvokeGuestAsync", "InvokeHostAsync"}]
       35 NEWCLOSURE                       R18 P9
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R18 R17 K5 ["IsGuest"]
       39 NEWCLOSURE                       R18 P10
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R18 R17 K6 ["IsHost"]
       43 JUMPIFNOT                        R4 ; [+2]
       44 MOVE                             R18 R10
       45 JUMP                             ; [+1]
       46 MOVE                             R18 R11
       47 SETTABLEKS                       R18 R17 K7 ["OnGuestEvent"]
       49 JUMPIFNOT                        R5 ; [+2]
       50 MOVE                             R18 R10
       51 JUMP                             ; [+1]
       52 MOVE                             R18 R11
       53 SETTABLEKS                       R18 R17 K8 ["OnHostEvent"]
       55 JUMPIFNOT                        R4 ; [+2]
       56 MOVE                             R18 R12
       57 JUMP                             ; [+1]
       58 MOVE                             R18 R13
       59 SETTABLEKS                       R18 R17 K9 ["OnGuestInvokeAsync"]
       61 JUMPIFNOT                        R5 ; [+2]
       62 MOVE                             R18 R12
       63 JUMP                             ; [+1]
       64 MOVE                             R18 R13
       65 SETTABLEKS                       R18 R17 K10 ["OnHostInvokeAsync"]
       67 JUMPIFNOT                        R5 ; [+2]
       68 MOVE                             R18 R8
       69 JUMP                             ; [+1]
       70 MOVE                             R18 R14
       71 SETTABLEKS                       R18 R17 K11 ["FireGuest"]
       73 JUMPIFNOT                        R4 ; [+2]
       74 MOVE                             R18 R8
       75 JUMP                             ; [+1]
       76 MOVE                             R18 R14
       77 SETTABLEKS                       R18 R17 K12 ["FireHost"]
       79 JUMPIFNOT                        R5 ; [+2]
       80 MOVE                             R18 R9
       81 JUMP                             ; [+1]
       82 MOVE                             R18 R15
       83 SETTABLEKS                       R18 R17 K13 ["InvokeGuestAsync"]
       85 JUMPIFNOT                        R4 ; [+2]
       86 MOVE                             R18 R9
       87 JUMP                             ; [+1]
       88 MOVE                             R18 R15
       89 SETTABLEKS                       R18 R17 K14 ["InvokeHostAsync"]
       91 CALL                             R16 1 1
       92 NEWCLOSURE                       R17 P11
       93 CAPTURE                          VAL R6
       94 NEWCLOSURE                       R18 P12
       95 CAPTURE                          VAL R7
       96 DUPTABLE                         R19 K20 [{"networking", "setTarget", "triggerEvent", "invokeAsync"}]
       97 SETTABLEKS                       R16 R19 K16 ["networking"]
       99 SETTABLEKS                       R3 R19 K17 ["setTarget"]
      101 SETTABLEKS                       R17 R19 K18 ["triggerEvent"]
      103 SETTABLEKS                       R18 R19 K19 ["invokeAsync"]
      105 CLOSEUPVALS                      R2
      106 RETURN                           R19 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_23:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K4 [table.clear]
        6 GETUPVAL                         R2 0
        7 CALL                             R1 1 0
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETIMPORT                        R6 K7 [task.spawn]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-5]
       18 GETUPVAL                         R3 0
       19 LENGTH                           R2 R3
       20 LOADN                            R3 0
       21 JUMPIFLT                         R3 R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_24:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K0 ["host"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K1 ["guest"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R3 R1 K2 ["setTarget"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 GETTABLEKS                       R3 R2 K2 ["setTarget"]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 0
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 DUPTABLE                         R5 K5 [{"host", "guest", "flushAll", "hasPendingMessages"}]
       23 GETTABLEKS                       R6 R1 K6 ["networking"]
       25 SETTABLEKS                       R6 R5 K0 ["host"]
       27 GETTABLEKS                       R6 R2 K6 ["networking"]
       29 SETTABLEKS                       R6 R5 K1 ["guest"]
       31 SETTABLEKS                       R4 R5 K3 ["flushAll"]
       33 SETTABLEKS                       R3 R5 K4 ["hasPendingMessages"]
       35 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NetworkingInterface"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K8 [PROTO_21]
       18 CAPTURE                          VAL R1
       19 DUPCLOSURE                       R4 K9 [PROTO_24]
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
