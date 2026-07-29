PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETTABLEKS                       R3 R1 K0 ["render"]
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["update called before the watch completed"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 SETTABLEKS                       R0 R1 K3 ["value"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K4 ["hostRpcInterface"]
       17 GETTABLEKS                       R1 R1 K5 ["updateFieldValue"]
       19 GETUPVAL                         R2 2
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["getInstanceId"]
       23 GETUPVAL                         R4 3
       24 CALL                             R3 1 1
       25 MOVE                             R4 R0
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K7 ["field"]
       29 LOADB                            R5 0
       30 JUMPIFEQKNIL                     R0 ; [+7]
       32 GETTABLEKS                       R7 R6 K8 ["render"]
       34 JUMPIFNOTEQKNIL                  R7 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 CALL                             R1 4 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R2 K0 ["instances"]
        2 GETTABLE                         R3 R4 R0
        3 JUMPIFEQKNIL                     R3 ; [+4]
        5 GETTABLEKS                       R4 R3 K1 ["value"]
        7 RETURN                           R4 1
        8 LOADNIL                          R4
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          REF R4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 GETTABLEKS                       R6 R2 K2 ["field"]
       17 GETTABLEKS                       R6 R6 K3 ["watch"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R5
       21 GETTABLEKS                       R9 R2 K4 ["state"]
       23 CALL                             R6 3 2
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          VAL R7
       26 DUPTABLE                         R9 K6 [{"value", "disconnect"}]
       27 SETTABLEKS                       R6 R9 K1 ["value"]
       29 GETUPVAL                         R10 1
       30 MOVE                             R11 R8
       31 CALL                             R10 1 1
       32 SETTABLEKS                       R10 R9 K5 ["disconnect"]
       34 MOVE                             R4 R9
       35 GETTABLEKS                       R9 R2 K0 ["instances"]
       37 SETTABLE                         R4 R9 R0
       38 CLOSEUPVALS                      R4
       39 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+10]
        4 GETIMPORT                        R3 K1 [error]
        6 LOADK                            R5 K2 ["Invalid field requested: %*"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R3 R2 K4 ["validateArgs"]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 2
       17 JUMPIF                           R3 ; [+10]
       18 GETIMPORT                        R5 K1 [error]
       20 LOADK                            R7 K5 ["Invalid arguments sent to %*: %*"]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R4
       23 NAMECALL                         R7 R7 K3 ["format"]
       25 CALL                             R7 3 1
       26 MOVE                             R6 R7
       27 CALL                             R5 1 0
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 GETTABLEKS                       R7 R2 K6 ["init"]
       32 JUMPIFNOT                        R7 ; [+7]
       33 GETTABLEKS                       R7 R2 K6 ["init"]
       35 GETUPVAL                         R8 1
       36 MOVE                             R9 R1
       37 CALL                             R7 2 2
       38 MOVE                             R5 R7
       39 MOVE                             R6 R8
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R8 R2 K7 ["key"]
       43 CALL                             R7 1 1
       44 DUPTABLE                         R8 K12 [{"field", "state", "destructor", "instances"}]
       45 SETTABLEKS                       R2 R8 K8 ["field"]
       47 SETTABLEKS                       R5 R8 K9 ["state"]
       49 SETTABLEKS                       R6 R8 K10 ["destructor"]
       51 NEWTABLE                         R9 0 0
       53 SETTABLEKS                       R9 R8 K11 ["instances"]
       55 NEWTABLE                         R9 0 0
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R10 R10 K13 ["instancesInView"]
       60 LOADNIL                          R11
       61 LOADNIL                          R12
       62 FORGPREP                         R10
       63 GETUPVAL                         R15 3
       64 GETTABLEKS                       R15 R15 K14 ["getInstanceId"]
       66 MOVE                             R16 R13
       67 CALL                             R15 1 1
       68 GETUPVAL                         R16 4
       69 MOVE                             R17 R13
       70 MOVE                             R18 R7
       71 MOVE                             R19 R8
       72 CALL                             R16 3 1
       73 SETTABLE                         R16 R9 R15
       74 FORGLOOP                         R10 1 ; [-12]
       76 GETUPVAL                         R10 3
       77 GETTABLEKS                       R10 R10 K15 ["trackingFields"]
       79 SETTABLE                         R8 R10 R7
       80 MOVE                             R10 R7
       81 MOVE                             R11 R9
       82 RETURN                           R10 2

PROTO_5:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["NYI: deleteField"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETUPVAL                         R8 0
        9 GETUPVAL                         R9 1
       10 MOVE                             R10 R7
       11 LOADK                            R11 K0 ["viewing"]
       12 CALL                             R8 3 1
       13 JUMPIFNOTEQKNIL                  R8 ; [+2]
       15 LOADB                            R10 0 +1
       16 LOADB                            R10 1
       17 FASTCALL2K                       ASSERT R10 K1 ; [+4]
       19 LOADK                            R11 K1 ["Guest is viewing an instance we don't know about"]
       20 GETIMPORT                        R9 K3 [assert]
       22 CALL                             R9 2 0
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R10 R10 K4 ["instancesInView"]
       26 GETTABLE                         R9 R10 R8
       27 JUMPIFNOT                        R9 ; [+5]
       28 GETUPVAL                         R9 2
       29 LOADK                            R10 K5 ["%* is being viewed twice"]
       30 MOVE                             R11 R8
       31 CALL                             R9 2 0
       32 JUMP                             ; [+54]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K4 ["instancesInView"]
       36 LOADB                            R10 1
       37 SETTABLE                         R10 R9 R8
       38 GETIMPORT                        R9 K7 [next]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K8 ["trackingFields"]
       43 CALL                             R9 1 1
       44 JUMPIFEQKNIL                     R9 ; [+42]
       46 NEWTABLE                         R9 0 0
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K8 ["trackingFields"]
       51 LOADNIL                          R11
       52 LOADNIL                          R12
       53 FORGPREP                         R10
       54 JUMPIFNOTEQKNIL                  R14 ; [+2]
       56 LOADB                            R16 0 +1
       57 LOADB                            R16 1
       58 FASTCALL2K                       ASSERT R16 K9 ; [+4]
       60 LOADK                            R17 K9 ["Luau"]
       61 GETIMPORT                        R15 K3 [assert]
       63 CALL                             R15 2 0
       64 GETUPVAL                         R15 3
       65 MOVE                             R16 R8
       66 MOVE                             R17 R13
       67 MOVE                             R18 R14
       68 CALL                             R15 3 1
       69 GETTABLEKS                       R17 R14 K10 ["field"]
       71 LOADB                            R16 0
       72 JUMPIFEQKNIL                     R15 ; [+7]
       74 GETTABLEKS                       R18 R17 K11 ["render"]
       76 JUMPIFNOTEQKNIL                  R18 ; [+2]
       78 LOADB                            R16 0 +1
       79 LOADB                            R16 1
       80 JUMPIFNOT                        R16 ; [+2]
       81 LOADB                            R16 1
       82 SETTABLE                         R16 R2 R13
       83 SETTABLE                         R15 R9 R13
       84 FORGLOOP                         R10 2 ; [-31]
       86 SETTABLE                         R9 R1 R7
       87 FORGLOOP                         R3 2 ; [-80]
       89 RETURN                           R1 2

PROTO_7:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["trackingFields"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       11 LOADK                            R6 K1 ["Host performed action on field that we are not tracking"]
       12 GETIMPORT                        R4 K3 [assert]
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 1
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R0
       18 LOADK                            R7 K4 ["perform field action"]
       19 CALL                             R4 3 1
       20 JUMPIFNOTEQKNIL                  R4 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       26 LOADK                            R7 K5 ["Host performed action on instance that we don't know about"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 GETTABLEKS                       R5 R3 K6 ["field"]
       32 GETTABLEKS                       R5 R5 K7 ["actions"]
       34 JUMPIFNOT                        R5 ; [+5]
       35 GETTABLEKS                       R6 R3 K6 ["field"]
       37 GETTABLEKS                       R6 R6 K7 ["actions"]
       39 GETTABLE                         R5 R6 R2
       40 JUMPIFNOTEQKNIL                  R5 ; [+14]
       42 GETIMPORT                        R6 K9 [error]
       44 LOADK                            R8 K10 ["Host performed action \"%*\" on %*, which doesn't exist"]
       45 MOVE                             R10 R2
       46 GETTABLEKS                       R11 R3 K6 ["field"]
       48 GETTABLEKS                       R11 R11 K11 ["key"]
       50 NAMECALL                         R8 R8 K12 ["format"]
       52 CALL                             R8 3 1
       53 MOVE                             R7 R8
       54 CALL                             R6 1 0
       55 MOVE                             R6 R5
       56 MOVE                             R7 R4
       57 GETTABLEKS                       R8 R3 K13 ["state"]
       59 GETVARARGS                       R9 -1
       60 CALL                             R6 -1 0
       61 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETUPVAL                         R8 1
        6 MOVE                             R9 R6
        7 LOADK                            R10 K0 ["stop viewing instances"]
        8 CALL                             R7 3 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R9 0 +1
       12 LOADB                            R9 1
       13 FASTCALL2K                       ASSERT R9 K1 ; [+4]
       15 LOADK                            R10 K1 ["Host stopped viewing instance we don't know about"]
       16 GETIMPORT                        R8 K3 [assert]
       18 CALL                             R8 2 0
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K4 ["instancesInView"]
       22 GETTABLE                         R8 R9 R7
       23 JUMPIFNOTEQKNIL                  R8 ; [+35]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K5 ["analytics"]
       28 GETTABLEKS                       R8 R8 K6 ["logCounter"]
       30 DUPTABLE                         R9 K15 [{["eventName"] = "LuaExplorerStopViewingInstancesInstanceNotInView", ["backends"], ["throttlingPercentage"], ["description"] = "Fired when stopViewingInstances is called with an instance not in view (SBT-4126)", ["lastUpdated"] = "2024-03-03"}]
       31 NEWTABLE                         R10 0 1
       33 LOADK                            R11 K16 ["RobloxTelemetryCounter"]
       34 SETLIST                          R10 R11 1 [1]
       36 SETTABLEKS                       R10 R9 K9 ["backends"]
       38 GETIMPORT                        R10 K18 [game]
       40 LOADK                            R12 K19 ["LuaExplorerStopViewingInstancesInstanceNotInViewThrottlingHundredthsPercent"]
       41 LOADN                            R13 10000
       42 NAMECALL                         R10 R10 K20 ["DefineFastInt"]
       44 CALL                             R10 3 1
       45 SETTABLEKS                       R10 R9 K10 ["throttlingPercentage"]
       47 DUPTABLE                         R10 K22 [{"debugContext"}]
       48 SETTABLEKS                       R1 R10 K21 ["debugContext"]
       50 CALL                             R8 2 0
       51 GETUPVAL                         R8 2
       52 CALL                             R8 0 1
       53 JUMPIFNOT                        R8 ; [+48]
       54 GETIMPORT                        R8 K24 [error]
       56 LOADK                            R9 K25 ["stopViewingInstances called with instance not in view"]
       57 CALL                             R8 1 0
       58 JUMP                             ; [+43]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K4 ["instancesInView"]
       62 LOADNIL                          R9
       63 SETTABLE                         R9 R8 R7
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K26 ["trackingFields"]
       67 LOADNIL                          R9
       68 LOADNIL                          R10
       69 FORGPREP                         R8
       70 JUMPIFNOTEQKNIL                  R12 ; [+2]
       72 LOADB                            R14 0 +1
       73 LOADB                            R14 1
       74 FASTCALL2K                       ASSERT R14 K27 ; [+4]
       76 LOADK                            R15 K27 ["Luau"]
       77 GETIMPORT                        R13 K3 [assert]
       79 CALL                             R13 2 0
       80 GETTABLEKS                       R14 R12 K28 ["instances"]
       82 GETTABLE                         R13 R14 R7
       83 JUMPIFNOTEQKNIL                  R13 ; [+2]
       85 LOADB                            R15 0 +1
       86 LOADB                            R15 1
       87 FASTCALL2K                       ASSERT R15 K29 ; [+4]
       89 LOADK                            R16 K29 ["Instance not being tracked by field"]
       90 GETIMPORT                        R14 K3 [assert]
       92 CALL                             R14 2 0
       93 GETTABLEKS                       R14 R13 K30 ["disconnect"]
       95 CALL                             R14 0 0
       96 GETTABLEKS                       R14 R12 K28 ["instances"]
       98 LOADNIL                          R15
       99 SETTABLE                         R15 R14 R7
      100 FORGLOOP                         R8 2 ; [-31]
      102 FORGLOOP                         R2 2 ; [-99]
      104 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["trackingFields"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       12 LOADK                            R7 K1 ["Luau"]
       13 GETIMPORT                        R5 K3 [assert]
       15 CALL                             R5 2 0
       16 GETTABLEKS                       R5 R4 K4 ["instances"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 JUMPIFNOTEQKNIL                  R9 ; [+2]
       23 LOADB                            R11 0 +1
       24 LOADB                            R11 1
       25 FASTCALL2K                       ASSERT R11 K1 ; [+4]
       27 LOADK                            R12 K1 ["Luau"]
       28 GETIMPORT                        R10 K3 [assert]
       30 CALL                             R10 2 0
       31 GETTABLEKS                       R10 R9 K5 ["disconnect"]
       33 CALL                             R10 0 0
       34 FORGLOOP                         R5 2 ; [-14]
       36 GETTABLEKS                       R5 R4 K6 ["destructor"]
       38 JUMPIFNOT                        R5 ; [+3]
       39 GETTABLEKS                       R5 R4 K6 ["destructor"]
       41 CALL                             R5 0 0
       42 FORGLOOP                         R0 2 ; [-37]
       44 GETIMPORT                        R0 K9 [table.clear]
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K0 ["trackingFields"]
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createUniqueKey"]
        3 CALL                             R2 0 1
        4 MOVE                             R3 R1
        5 JUMPIF                           R3 ; [+2]
        6 NEWTABLE                         R3 0 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 DUPCLOSURE                       R6 K1 [PROTO_5]
       18 NEWCLOSURE                       R7 P3
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R4
       23 NEWCLOSURE                       R8 P4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 NEWCLOSURE                       R9 P5
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 NEWCLOSURE                       R10 P6
       31 CAPTURE                          VAL R0
       32 DUPTABLE                         R11 K8 [{"createFieldAsync", "deleteField", "viewInstancesAsync", "stopViewingInstances", "performFieldAction", "destroy"}]
       33 SETTABLEKS                       R5 R11 K2 ["createFieldAsync"]
       35 SETTABLEKS                       R6 R11 K3 ["deleteField"]
       37 SETTABLEKS                       R7 R11 K4 ["viewInstancesAsync"]
       39 SETTABLEKS                       R9 R11 K5 ["stopViewingInstances"]
       41 SETTABLEKS                       R8 R11 K6 ["performFieldAction"]
       43 SETTABLEKS                       R10 R11 K7 ["destroy"]
       45 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["AllFields"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Fields"]
       18 GETTABLEKS                       R3 R3 K8 ["FieldTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Guest"]
       25 GETTABLEKS                       R4 R4 K10 ["InstanceGuestRPCInterface"]
       27 GETTABLEKS                       R4 R4 K11 ["InstanceGuestRPCInterfaceTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["RpcTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["createDebugLogger"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K17 ["Flags"]
       53 GETTABLEKS                       R8 R8 K18 ["getFFlagDebugExplorerMoreEagerErrors"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K9 ["Guest"]
       60 GETTABLEKS                       R9 R9 K10 ["InstanceGuestRPCInterface"]
       62 GETTABLEKS                       R9 R9 K15 ["Util"]
       64 GETTABLEKS                       R9 R9 K19 ["getInstanceById"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K15 ["Util"]
       71 GETTABLEKS                       R10 R10 K20 ["onlyOnce"]
       73 CALL                             R9 1 1
       74 MOVE                             R10 R6
       75 LOADK                            R11 K21 ["createGuestFields"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K22 [PROTO_0]
       78 DUPCLOSURE                       R12 K23 [PROTO_10]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R7
       85 RETURN                           R12 1
