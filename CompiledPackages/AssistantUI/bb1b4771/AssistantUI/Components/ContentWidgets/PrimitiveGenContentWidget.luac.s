PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
        3 DUPTABLE                         R1 K8 [{"General", "TooManyRequests", "TooManyConcurrentJobs", "ModerationFailed", "EmptyPrompt", "DmHealthChecking", "PluginVersionMismatch"}]
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K9 ["PrimitiveGen"]
        6 LOADK                            R5 K10 ["GenerationErrorGeneral"]
        7 NAMECALL                         R2 R2 K11 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K1 ["General"]
       12 GETUPVAL                         R2 1
       13 LOADK                            R4 K9 ["PrimitiveGen"]
       14 LOADK                            R5 K12 ["GenerationErrorTooManyRequests"]
       15 NAMECALL                         R2 R2 K11 ["getText"]
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R1 K2 ["TooManyRequests"]
       20 GETUPVAL                         R2 1
       21 LOADK                            R4 K9 ["PrimitiveGen"]
       22 LOADK                            R5 K13 ["GenerationErrorTooManyConcurrentJobs"]
       23 DUPTABLE                         R6 K16 [{"maxConcurrentJobs", "s"}]
       24 GETIMPORT                        R7 K19 [string.format]
       26 LOADK                            R8 K20 ["%d"]
       27 MOVE                             R9 R0
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K14 ["maxConcurrentJobs"]
       31 JUMPIFNOTEQKN                    R0 K21 [1] ; [+3]
       33 LOADK                            R7 K22 [""]
       34 JUMP                             ; [+1]
       35 LOADK                            R7 K15 ["s"]
       36 SETTABLEKS                       R7 R6 K15 ["s"]
       38 NAMECALL                         R2 R2 K11 ["getText"]
       40 CALL                             R2 4 1
       41 SETTABLEKS                       R2 R1 K3 ["TooManyConcurrentJobs"]
       43 GETUPVAL                         R2 1
       44 LOADK                            R4 K9 ["PrimitiveGen"]
       45 LOADK                            R5 K23 ["GenerationErrorModerationFailed"]
       46 NAMECALL                         R2 R2 K11 ["getText"]
       48 CALL                             R2 3 1
       49 SETTABLEKS                       R2 R1 K4 ["ModerationFailed"]
       51 GETUPVAL                         R2 1
       52 LOADK                            R4 K9 ["PrimitiveGen"]
       53 LOADK                            R5 K24 ["GenerationErrorEmptyPrompt"]
       54 NAMECALL                         R2 R2 K11 ["getText"]
       56 CALL                             R2 3 1
       57 SETTABLEKS                       R2 R1 K5 ["EmptyPrompt"]
       59 GETUPVAL                         R2 1
       60 LOADK                            R4 K9 ["PrimitiveGen"]
       61 LOADK                            R5 K25 ["GenerationErrorDmHealthChecking"]
       62 NAMECALL                         R2 R2 K11 ["getText"]
       64 CALL                             R2 3 1
       65 SETTABLEKS                       R2 R1 K6 ["DmHealthChecking"]
       67 GETUPVAL                         R2 1
       68 LOADK                            R4 K9 ["PrimitiveGen"]
       69 LOADK                            R5 K26 ["GenerationErrorPluginVersionMismatch"]
       70 NAMECALL                         R2 R2 K11 ["getText"]
       72 CALL                             R2 3 1
       73 SETTABLEKS                       R2 R1 K7 ["PluginVersionMismatch"]
       75 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["locale"]
       11 SETLIST                          R2 R3 1 [1]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K2 [task.delay]
        8 GETUPVAL                         R1 2
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 RETURN                           R1 1

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 JUMPIFEQKS                       R5 K0 [""] ; [+3]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-5]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFEQKS                       R0 K2 ["string"] ; [+4]
        7 LOADNIL                          R0
        8 LOADB                            R1 0
        9 RETURN                           R0 2
       10 GETIMPORT                        R0 K4 [pcall]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 2
       16 JUMPIFNOT                        R0 ; [+7]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K1 [typeof]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K5 ["table"] ; [+4]
       24 LOADNIL                          R2
       25 LOADB                            R3 0
       26 RETURN                           R2 2
       27 MOVE                             R2 R1
       28 JUMPIF                           R1 ; [+2]
       29 LOADB                            R3 0
       30 RETURN                           R2 2
       31 MOVE                             R4 R1
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 JUMPIFEQKS                       R8 K6 [""] ; [+3]
       37 LOADB                            R3 1
       38 RETURN                           R2 2
       39 FORGLOOP                         R4 2 ; [-5]
       41 LOADB                            R3 0
       42 RETURN                           R2 2

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 4
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 4
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K1 ["capturePreviewImagesAsync"]
       21 DUPTABLE                         R1 K4 [{"toolUseId", "tag"}]
       22 GETUPVAL                         R2 1
       23 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       25 GETUPVAL                         R2 2
       26 SETTABLEKS                       R2 R1 K3 ["tag"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["useChannel"]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K3 ["Scope"]
       13 MOVE                             R6 R0
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K4 ["Field"]
       17 GETTABLEKS                       R7 R7 K5 ["Images"]
       19 CALL                             R4 3 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U4
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R4
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 2
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K7 ["useRef"]
       35 MOVE                             R8 R6
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R7
       46 NEWTABLE                         R10 0 4
       48 MOVE                             R11 R3
       49 MOVE                             R12 R0
       50 MOVE                             R13 R1
       51 MOVE                             R14 R2
       52 SETLIST                          R10 R11 4 [1]
       54 CALL                             R8 2 0
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R8 R8 K9 ["useCarouselPreviewImage"]
       58 MOVE                             R9 R5
       59 CALL                             R8 1 -1
       60 RETURN                           R8 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["images"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 JUMPIFEQKS                       R7 K1 [""] ; [+23]
       13 LOADK                            R9 K2 ["preload_%*"]
       14 MOVE                             R11 R6
       15 NAMECALL                         R9 R9 K3 ["format"]
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 GETUPVAL                         R9 0
       20 LOADK                            R10 K4 ["ImageLabel"]
       21 DUPTABLE                         R11 K12 [{["BackgroundTransparency"] = 1, ["ImageTransparency"] = 0.9, ["Image"], ["Size"], ["LayoutOrder"]}]
       22 SETTABLEKS                       R7 R11 K9 ["Image"]
       24 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       26 LOADN                            R13 4
       27 LOADN                            R14 4
       28 CALL                             R12 2 1
       29 SETTABLEKS                       R12 R11 K10 ["Size"]
       31 SETTABLEKS                       R6 R11 K11 ["LayoutOrder"]
       33 CALL                             R9 2 1
       34 SETTABLE                         R9 R2 R8
       35 FORGLOOP                         R3 2 ; [-25]
       37 GETIMPORT                        R3 K17 [next]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 1
       41 JUMPIF                           R3 ; [+2]
       42 LOADNIL                          R3
       43 RETURN                           R3 1
       44 GETUPVAL                         R3 0
       45 GETUPVAL                         R4 1
       46 DUPTABLE                         R5 K20 [{["tag"] = "size-0-0 no-clip row"}]
       47 MOVE                             R6 R2
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["images"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["getBatch0Indices"]
       10 LENGTH                           R4 R1
       11 CALL                             R3 1 3
       12 FORGPREP                         R3
       13 GETTABLE                         R8 R1 R7
       14 JUMPIFNOT                        R8 ; [+29]
       15 JUMPIFEQKS                       R8 K2 [""] ; [+28]
       17 LOADK                            R10 K3 ["persist_%*"]
       18 MOVE                             R12 R7
       19 NAMECALL                         R10 R10 K4 ["format"]
       21 CALL                             R10 2 1
       22 MOVE                             R9 R10
       23 GETUPVAL                         R10 1
       24 LOADK                            R11 K5 ["ImageLabel"]
       25 DUPTABLE                         R12 K13 [{["BackgroundTransparency"] = 1, ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
       26 SETTABLEKS                       R8 R12 K8 ["Image"]
       28 GETIMPORT                        R13 K16 [UDim2.fromOffset]
       30 LOADN                            R14 0
       31 LOADN                            R15 0
       32 CALL                             R13 2 1
       33 SETTABLEKS                       R13 R12 K9 ["Position"]
       35 GETIMPORT                        R13 K16 [UDim2.fromOffset]
       37 LOADN                            R14 2
       38 LOADN                            R15 2
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K10 ["Size"]
       42 CALL                             R10 2 1
       43 SETTABLE                         R10 R2 R9
       44 FORGLOOP                         R3 2 ; [-32]
       46 GETIMPORT                        R3 K18 [next]
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 JUMPIF                           R3 ; [+2]
       51 LOADNIL                          R3
       52 RETURN                           R3 1
       53 GETUPVAL                         R3 1
       54 LOADK                            R4 K19 ["Frame"]
       55 DUPTABLE                         R5 K22 [{["BackgroundTransparency"] = 1, ["Size"], ["ClipsDescendants"] = True}]
       56 GETIMPORT                        R6 K16 [UDim2.fromOffset]
       58 LOADN                            R7 0
       59 LOADN                            R8 0
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K10 ["Size"]
       63 MOVE                             R6 R2
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["previewImage"]
        2 GETTABLEKS                       R2 R1 K1 ["exists"]
        4 JUMPIF                           R2 ; [+27]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K5 [{"Size", "radius", "LayoutOrder"}]
        8 GETIMPORT                        R5 K8 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 GETUPVAL                         R9 2
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K2 ["Size"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K9 ["Enums"]
       20 GETTABLEKS                       R5 R5 K10 ["Radius"]
       22 GETTABLEKS                       R5 R5 K11 ["Small"]
       24 SETTABLEKS                       R5 R4 K3 ["radius"]
       26 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       28 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1
       32 GETUPVAL                         R2 4
       33 CALL                             R2 0 1
       34 GETUPVAL                         R3 0
       35 GETUPVAL                         R4 5
       36 DUPTABLE                         R5 K14 [{["tag"] = "row flex-x-between align-x-center align-y-center size-full-0 padding-x-small padding-y-small radius-small bg-shift-200", ["Size"], ["LayoutOrder"]}]
       37 GETIMPORT                        R6 K8 [UDim2.new]
       39 LOADN                            R7 1
       40 LOADN                            R8 0
       41 LOADN                            R9 0
       42 GETUPVAL                         R10 2
       43 CALL                             R6 4 1
       44 SETTABLEKS                       R6 R5 K2 ["Size"]
       46 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       48 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       50 DUPTABLE                         R6 K18 [{"LastPreview", "PreviewImage", "NextPreview"}]
       51 GETUPVAL                         R7 0
       52 GETUPVAL                         R8 6
       53 DUPTABLE                         R9 K22 [{"icon", "size", "onActivated", "LayoutOrder"}]
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K9 ["Enums"]
       57 GETTABLEKS                       R10 R10 K23 ["IconName"]
       59 GETTABLEKS                       R10 R10 K24 ["ChevronLargeLeft"]
       61 SETTABLEKS                       R10 R9 K19 ["icon"]
       63 GETUPVAL                         R10 3
       64 GETTABLEKS                       R10 R10 K9 ["Enums"]
       66 GETTABLEKS                       R10 R10 K25 ["InputSize"]
       68 GETTABLEKS                       R10 R10 K11 ["Small"]
       70 SETTABLEKS                       R10 R9 K20 ["size"]
       72 GETTABLEKS                       R10 R1 K26 ["decrement"]
       74 SETTABLEKS                       R10 R9 K21 ["onActivated"]
       76 MOVE                             R10 R2
       77 CALL                             R10 0 1
       78 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K15 ["LastPreview"]
       83 GETUPVAL                         R7 0
       84 GETUPVAL                         R8 7
       85 DUPTABLE                         R9 K31 [{["tag"] = "fill size-0-full radius-small", ["Image"], ["ScaleType"], ["LayoutOrder"], ["testId"]}]
       86 GETTABLEKS                       R10 R1 K32 ["current"]
       88 SETTABLEKS                       R10 R9 K28 ["Image"]
       90 GETIMPORT                        R10 K35 [Enum.ScaleType.Fit]
       92 SETTABLEKS                       R10 R9 K29 ["ScaleType"]
       94 MOVE                             R10 R2
       95 CALL                             R10 0 1
       96 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       98 GETUPVAL                         R10 8
       99 GETTABLEKS                       R10 R10 K36 ["PrimitiveGen"]
      101 GETTABLEKS                       R10 R10 K16 ["PreviewImage"]
      103 SETTABLEKS                       R10 R9 K30 ["testId"]
      105 DUPTABLE                         R10 K38 [{"PreloadTray"}]
      106 GETUPVAL                         R11 9
      107 MOVE                             R12 R1
      108 CALL                             R11 1 1
      109 SETTABLEKS                       R11 R10 K37 ["PreloadTray"]
      111 CALL                             R7 3 1
      112 SETTABLEKS                       R7 R6 K16 ["PreviewImage"]
      114 GETUPVAL                         R7 0
      115 GETUPVAL                         R8 6
      116 DUPTABLE                         R9 K22 [{"icon", "size", "onActivated", "LayoutOrder"}]
      117 GETUPVAL                         R10 3
      118 GETTABLEKS                       R10 R10 K9 ["Enums"]
      120 GETTABLEKS                       R10 R10 K23 ["IconName"]
      122 GETTABLEKS                       R10 R10 K39 ["ChevronLargeRight"]
      124 SETTABLEKS                       R10 R9 K19 ["icon"]
      126 GETUPVAL                         R10 3
      127 GETTABLEKS                       R10 R10 K9 ["Enums"]
      129 GETTABLEKS                       R10 R10 K25 ["InputSize"]
      131 GETTABLEKS                       R10 R10 K11 ["Small"]
      133 SETTABLEKS                       R10 R9 K20 ["size"]
      135 GETTABLEKS                       R10 R1 K40 ["increment"]
      137 SETTABLEKS                       R10 R9 K21 ["onActivated"]
      139 MOVE                             R10 R2
      140 CALL                             R10 0 1
      141 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      143 CALL                             R7 2 1
      144 SETTABLEKS                       R7 R6 K17 ["NextPreview"]
      146 CALL                             R3 3 -1
      147 RETURN                           R3 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 60
        2 JUMPIFNOTLE                      R2 R1 ; [+21]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K0 ["PrimitiveGen"]
        6 LOADK                            R3 K1 ["ExpectedTimeMinutes"]
        7 DUPTABLE                         R4 K3 [{"minutes"}]
        8 GETIMPORT                        R5 K6 [string.format]
       10 LOADK                            R6 K7 ["%d"]
       11 GETUPVAL                         R9 0
       12 DIVK                             R8 R9 K8 [60]
       13 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       14 GETIMPORT                        R7 K11 [math.floor]
       16 CALL                             R7 1 1
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K2 ["minutes"]
       20 NAMECALL                         R0 R0 K12 ["getText"]
       22 CALL                             R0 4 1
       23 JUMP                             ; [+14]
       24 GETUPVAL                         R0 1
       25 LOADK                            R2 K0 ["PrimitiveGen"]
       26 LOADK                            R3 K13 ["ExpectedTimeSeconds"]
       27 DUPTABLE                         R4 K15 [{"seconds"}]
       28 GETIMPORT                        R5 K6 [string.format]
       30 LOADK                            R6 K7 ["%d"]
       31 GETUPVAL                         R7 0
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K14 ["seconds"]
       35 NAMECALL                         R0 R0 K12 ["getText"]
       37 CALL                             R0 4 1
       38 GETUPVAL                         R3 2
       39 LENGTH                           R2 R3
       40 LOADN                            R3 0
       41 JUMPIFNOTLT                      R3 R2 ; [+14]
       43 LOADK                            R2 K16 ["%* %*"]
       44 GETUPVAL                         R4 1
       45 LOADK                            R6 K0 ["PrimitiveGen"]
       46 LOADK                            R7 K17 ["GeneratingPrefix"]
       47 NAMECALL                         R4 R4 K12 ["getText"]
       49 CALL                             R4 3 1
       50 GETUPVAL                         R5 2
       51 NAMECALL                         R2 R2 K5 ["format"]
       53 CALL                             R2 3 1
       54 MOVE                             R1 R2
       55 JUMP                             ; [+6]
       56 GETUPVAL                         R1 1
       57 LOADK                            R3 K0 ["PrimitiveGen"]
       58 LOADK                            R4 K18 ["Generating"]
       59 NAMECALL                         R1 R1 K12 ["getText"]
       61 CALL                             R1 3 1
       62 NEWTABLE                         R2 4 0
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R3 R3 K19 ["Stage"]
       67 GETTABLEKS                       R3 R3 K20 ["Submitting"]
       69 GETUPVAL                         R4 1
       70 LOADK                            R6 K0 ["PrimitiveGen"]
       71 LOADK                            R7 K21 ["StageSubmitting"]
       72 NAMECALL                         R4 R4 K12 ["getText"]
       74 CALL                             R4 3 1
       75 SETTABLE                         R4 R2 R3
       76 GETUPVAL                         R3 3
       77 GETTABLEKS                       R3 R3 K19 ["Stage"]
       79 GETTABLEKS                       R3 R3 K22 ["ResolvingDependencies"]
       81 GETUPVAL                         R4 1
       82 LOADK                            R6 K0 ["PrimitiveGen"]
       83 LOADK                            R7 K23 ["StageResolvingDependencies"]
       84 NAMECALL                         R4 R4 K12 ["getText"]
       86 CALL                             R4 3 1
       87 SETTABLE                         R4 R2 R3
       88 GETUPVAL                         R3 3
       89 GETTABLEKS                       R3 R3 K19 ["Stage"]
       91 GETTABLEKS                       R3 R3 K24 ["DownloadingScript"]
       93 GETUPVAL                         R4 1
       94 LOADK                            R6 K0 ["PrimitiveGen"]
       95 LOADK                            R7 K25 ["StageDownloadingScript"]
       96 NAMECALL                         R4 R4 K12 ["getText"]
       98 CALL                             R4 3 1
       99 SETTABLE                         R4 R2 R3
      100 GETUPVAL                         R3 3
      101 GETTABLEKS                       R3 R3 K19 ["Stage"]
      103 GETTABLEKS                       R3 R3 K26 ["Inserting"]
      105 GETUPVAL                         R4 1
      106 LOADK                            R6 K0 ["PrimitiveGen"]
      107 LOADK                            R7 K27 ["StageInserting"]
      108 NAMECALL                         R4 R4 K12 ["getText"]
      110 CALL                             R4 3 1
      111 SETTABLE                         R4 R2 R3
      112 DUPTABLE                         R3 K32 [{"Generating", "Preparing", "ExpectedTime", "TakingLonger", "Stages"}]
      113 SETTABLEKS                       R1 R3 K18 ["Generating"]
      115 GETUPVAL                         R4 1
      116 LOADK                            R6 K0 ["PrimitiveGen"]
      117 LOADK                            R7 K33 ["DefaultDisplayName"]
      118 NAMECALL                         R4 R4 K12 ["getText"]
      120 CALL                             R4 3 1
      121 SETTABLEKS                       R4 R3 K28 ["Preparing"]
      123 SETTABLEKS                       R0 R3 K29 ["ExpectedTime"]
      125 GETUPVAL                         R4 1
      126 LOADK                            R6 K0 ["PrimitiveGen"]
      127 LOADK                            R7 K30 ["TakingLonger"]
      128 NAMECALL                         R4 R4 K12 ["getText"]
      130 CALL                             R4 3 1
      131 SETTABLEKS                       R4 R3 K30 ["TakingLonger"]
      133 SETTABLEKS                       R2 R3 K31 ["Stages"]
      135 RETURN                           R3 1

PROTO_15:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIF                           R0 ; [+8]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 DUPCLOSURE                       R2 K1 [PROTO_15]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["name"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADK                            R2 K2 [""]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K3 ["id"]
       10 JUMPIF                           R3 ; [+1]
       11 LOADNIL                          R3
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R4 R1 K4 ["input"]
       15 JUMPIF                           R4 ; [+1]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R6 R4 K5 ["prompt"]
       19 ORK                              R5 R6 K2 [""]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["useChannel"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K7 ["Scope"]
       26 MOVE                             R8 R3
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K8 ["Field"]
       30 GETTABLEKS                       R9 R9 K9 ["Stage"]
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 3
       34 MOVE                             R8 R3
       35 LOADNIL                          R9
       36 LOADB                            R10 0
       37 CALL                             R7 3 1
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R5
       45 CAPTURE                          UPVAL U2
       46 NEWTABLE                         R10 0 3
       48 GETUPVAL                         R11 6
       49 GETTABLEKS                       R11 R11 K11 ["locale"]
       51 MOVE                             R12 R2
       52 MOVE                             R13 R5
       53 SETLIST                          R10 R11 3 [1]
       55 CALL                             R8 2 1
       56 GETUPVAL                         R9 7
       57 GETTABLEKS                       R9 R9 K12 ["deriveToolStatus"]
       59 GETTABLEKS                       R10 R0 K0 ["toolUse"]
       61 GETTABLEKS                       R11 R0 K13 ["toolResult"]
       63 CALL                             R9 2 1
       64 LOADB                            R10 1
       65 GETUPVAL                         R11 8
       66 GETTABLEKS                       R11 R11 K14 ["Preparing"]
       68 JUMPIFEQ                         R9 R11 ; [+8]
       70 GETUPVAL                         R11 8
       71 GETTABLEKS                       R11 R11 K15 ["Running"]
       73 JUMPIFEQ                         R9 R11 ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 GETUPVAL                         R12 8
       78 GETTABLEKS                       R12 R12 K15 ["Running"]
       80 JUMPIFNOTEQ                      R9 R12 ; [+4]
       82 GETTABLEKS                       R11 R8 K16 ["Generating"]
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R11 R8 K14 ["Preparing"]
       87 JUMPIFNOT                        R10 ; [+19]
       88 FASTCALL1                        TYPEOF R6 ; [+3]
       89 MOVE                             R14 R6
       90 GETIMPORT                        R13 K18 [typeof]
       92 CALL                             R13 1 1
       93 JUMPIFNOTEQKS                    R13 K19 ["string"] ; [+13]
       95 JUMPIFEQKS                       R6 K2 [""] ; [+11]
       97 LOADK                            R13 K20 ["(%*)"]
       98 GETTABLEKS                       R17 R8 K21 ["Stages"]
      100 GETTABLE                         R16 R17 R6
      101 OR                               R15 R16 R6
      102 NAMECALL                         R13 R13 K22 ["format"]
      104 CALL                             R13 2 1
      105 MOVE                             R12 R13
      106 JUMP                             ; [+1]
      107 LOADNIL                          R12
      108 GETUPVAL                         R13 9
      109 MOVE                             R14 R10
      110 CALL                             R13 1 1
      111 JUMPIFNOT                        R10 ; [+7]
      112 JUMPIFNOT                        R13 ; [+3]
      113 GETTABLEKS                       R14 R8 K23 ["TakingLonger"]
      115 JUMP                             ; [+4]
      116 GETTABLEKS                       R14 R8 K24 ["ExpectedTime"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R14
      120 LOADB                            R15 1
      121 JUMPIFNOTEQKNIL                  R12 ; [+5]
      123 JUMPIFNOTEQKNIL                  R14 ; [+2]
      125 LOADB                            R15 0 +1
      126 LOADB                            R15 1
      127 GETTABLEKS                       R16 R7 K25 ["exists"]
      129 OR                               R17 R10 R16
      130 GETTABLEKS                       R18 R0 K26 ["editThisContent"]
      132 GETTABLEKS                       R19 R0 K27 ["contentId"]
      134 GETUPVAL                         R20 4
      135 GETTABLEKS                       R20 R20 K28 ["useRef"]
      137 LOADB                            R21 0
      138 CALL                             R20 1 1
      139 GETUPVAL                         R21 4
      140 GETTABLEKS                       R21 R21 K29 ["useEffect"]
      142 NEWCLOSURE                       R22 P1
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R19
      147 NEWTABLE                         R23 0 3
      149 MOVE                             R24 R16
      150 MOVE                             R25 R19
      151 MOVE                             R26 R18
      152 SETLIST                          R23 R24 3 [1]
      154 CALL                             R21 2 0
      155 GETUPVAL                         R21 10
      156 CALL                             R21 0 1
      157 GETUPVAL                         R22 11
      158 GETUPVAL                         R23 12
      159 GETTABLEKS                       R23 R23 K30 ["Root"]
      161 DUPTABLE                         R24 K33 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      162 GETTABLEKS                       R25 R0 K31 ["LayoutOrder"]
      164 SETTABLEKS                       R25 R24 K31 ["LayoutOrder"]
      166 GETTABLEKS                       R25 R0 K32 ["expanded"]
      168 SETTABLEKS                       R25 R24 K32 ["expanded"]
      170 GETTABLEKS                       R25 R0 K27 ["contentId"]
      172 SETTABLEKS                       R25 R24 K27 ["contentId"]
      174 GETTABLEKS                       R25 R0 K26 ["editThisContent"]
      176 SETTABLEKS                       R25 R24 K26 ["editThisContent"]
      178 DUPTABLE                         R25 K37 [{"Header", "Persist", "Content"}]
      179 GETUPVAL                         R26 11
      180 GETUPVAL                         R27 12
      181 GETTABLEKS                       R27 R27 K34 ["Header"]
      183 DUPTABLE                         R28 K40 [{"IsDisabled", "LayoutOrder", "testId"}]
      184 NOT                              R29 R17
      185 SETTABLEKS                       R29 R28 K38 ["IsDisabled"]
      187 MOVE                             R29 R21
      188 CALL                             R29 0 1
      189 SETTABLEKS                       R29 R28 K31 ["LayoutOrder"]
      191 GETUPVAL                         R29 13
      192 GETTABLEKS                       R29 R29 K41 ["PrimitiveGen"]
      194 GETTABLEKS                       R29 R29 K42 ["Expand"]
      196 SETTABLEKS                       R29 R28 K39 ["testId"]
      198 DUPTABLE                         R29 K45 [{"Text", "StageInfo"}]
      199 GETUPVAL                         R30 11
      200 GETUPVAL                         R31 14
      201 DUPTABLE                         R32 K48 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      202 SETTABLEKS                       R11 R32 K43 ["Text"]
      204 MOVE                             R33 R21
      205 CALL                             R33 0 1
      206 SETTABLEKS                       R33 R32 K31 ["LayoutOrder"]
      208 DUPTABLE                         R33 K50 [{"Shimmer"}]
      209 JUMPIFNOT                        R10 ; [+4]
      210 GETUPVAL                         R34 11
      211 GETUPVAL                         R35 15
      212 CALL                             R34 1 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R34
      215 SETTABLEKS                       R34 R33 K49 ["Shimmer"]
      217 CALL                             R30 3 1
      218 SETTABLEKS                       R30 R29 K43 ["Text"]
      220 MOVE                             R30 R15
      221 JUMPIFNOT                        R30 ; [+37]
      222 GETUPVAL                         R30 11
      223 GETUPVAL                         R31 16
      224 DUPTABLE                         R32 K52 [{["tag"] = "row align-y-center gap-xsmall size-0-0 auto-xy padding-top-xxsmall", ["LayoutOrder"]}]
      225 MOVE                             R33 R21
      226 CALL                             R33 0 1
      227 SETTABLEKS                       R33 R32 K31 ["LayoutOrder"]
      229 DUPTABLE                         R33 K55 [{"GenerationStage", "TimeHint"}]
      230 MOVE                             R34 R12
      231 JUMPIFNOT                        R34 ; [+10]
      232 GETUPVAL                         R34 11
      233 GETUPVAL                         R35 14
      234 DUPTABLE                         R36 K57 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      235 SETTABLEKS                       R12 R36 K43 ["Text"]
      237 MOVE                             R37 R21
      238 CALL                             R37 0 1
      239 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      241 CALL                             R34 2 1
      242 SETTABLEKS                       R34 R33 K53 ["GenerationStage"]
      244 MOVE                             R34 R14
      245 JUMPIFNOT                        R34 ; [+10]
      246 GETUPVAL                         R34 11
      247 GETUPVAL                         R35 14
      248 DUPTABLE                         R36 K57 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      249 SETTABLEKS                       R14 R36 K43 ["Text"]
      251 MOVE                             R37 R21
      252 CALL                             R37 0 1
      253 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      255 CALL                             R34 2 1
      256 SETTABLEKS                       R34 R33 K54 ["TimeHint"]
      258 CALL                             R30 3 1
      259 SETTABLEKS                       R30 R29 K44 ["StageInfo"]
      261 CALL                             R26 3 1
      262 SETTABLEKS                       R26 R25 K34 ["Header"]
      264 GETUPVAL                         R26 17
      265 MOVE                             R27 R7
      266 CALL                             R26 1 1
      267 SETTABLEKS                       R26 R25 K35 ["Persist"]
      269 GETUPVAL                         R26 11
      270 GETUPVAL                         R27 12
      271 GETTABLEKS                       R27 R27 K36 ["Content"]
      273 DUPTABLE                         R28 K59 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      274 MOVE                             R29 R21
      275 CALL                             R29 0 1
      276 SETTABLEKS                       R29 R28 K31 ["LayoutOrder"]
      278 DUPTABLE                         R29 K61 [{"Preview"}]
      279 GETUPVAL                         R30 11
      280 GETUPVAL                         R31 18
      281 DUPTABLE                         R32 K63 [{"previewImage", "LayoutOrder"}]
      282 SETTABLEKS                       R7 R32 K62 ["previewImage"]
      284 MOVE                             R33 R21
      285 CALL                             R33 0 1
      286 SETTABLEKS                       R33 R32 K31 ["LayoutOrder"]
      288 CALL                             R30 2 1
      289 SETTABLEKS                       R30 R29 K60 ["Preview"]
      291 CALL                             R26 3 1
      292 SETTABLEKS                       R26 R25 K36 ["Content"]
      294 CALL                             R22 3 -1
      295 RETURN                           R22 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectTaggedInstances"]
        8 DUPTABLE                         R1 K2 [{"tag"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["tag"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_19:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R2 R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["InstanceChip"]
        7 LOADK                            R4 K1 ["Multiple"]
        8 DUPTABLE                         R5 K4 [{"name", "count"}]
        9 GETUPVAL                         R6 2
       10 SETTABLEKS                       R6 R5 K2 ["name"]
       12 GETUPVAL                         R6 0
       13 SETTABLEKS                       R6 R5 K3 ["count"]
       15 NAMECALL                         R1 R1 K5 ["getText"]
       17 CALL                             R1 4 1
       18 MOVE                             R0 R1
       19 JUMP                             ; [+16]
       20 GETUPVAL                         R1 0
       21 JUMPIFNOTEQKN                    R1 K6 [0] ; [+13]
       23 GETUPVAL                         R1 1
       24 LOADK                            R3 K0 ["InstanceChip"]
       25 LOADK                            R4 K7 ["Deleted"]
       26 DUPTABLE                         R5 K8 [{"name"}]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K2 ["name"]
       30 NAMECALL                         R1 R1 K5 ["getText"]
       32 CALL                             R1 4 1
       33 MOVE                             R0 R1
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R0 2
       36 GETUPVAL                         R1 1
       37 LOADK                            R3 K9 ["PrimitiveGen"]
       38 LOADK                            R4 K10 ["Inserted"]
       39 NAMECALL                         R1 R1 K5 ["getText"]
       41 CALL                             R1 3 1
       42 GETUPVAL                         R2 3
       43 JUMPIF                           R2 ; [+7]
       44 LOADK                            R2 K11 ["%* %*"]
       45 MOVE                             R4 R1
       46 MOVE                             R5 R0
       47 NAMECALL                         R2 R2 K12 ["format"]
       49 CALL                             R2 3 1
       50 MOVE                             R1 R2
       51 DUPTABLE                         R2 K14 [{"DisplayName", "Inserted"}]
       52 SETTABLEKS                       R0 R2 K13 ["DisplayName"]
       54 SETTABLEKS                       R1 R2 K10 ["Inserted"]
       56 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K2 ["input"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R0 K3 ["toolResult"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R4 K4 ["structuredContent"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R6 R5 K5 ["tag"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 JUMPIFNOT                        R5 ; [+3]
       25 GETTABLEKS                       R7 R5 K6 ["generationName"]
       27 JUMPIF                           R7 ; [+4]
       28 GETTABLEKS                       R7 R3 K7 ["prompt"]
       30 JUMPIF                           R7 ; [+1]
       31 LOADK                            R7 K8 [""]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K9 ["useContext"]
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K10 ["Context"]
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 3
       40 MOVE                             R10 R2
       41 MOVE                             R11 R6
       42 GETTABLEKS                       R13 R0 K11 ["expanded"]
       44 JUMPIFEQKB                       R13 TRUE ; [+2]
       46 LOADB                            R12 0 +1
       47 LOADB                            R12 1
       48 CALL                             R9 3 1
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R10 R10 K12 ["useTag"]
       52 MOVE                             R11 R6
       53 DUPTABLE                         R12 K16 [{["includeCount"] = True, ["includeClassName"] = True}]
       54 CALL                             R10 2 1
       55 JUMPIFNOT                        R10 ; [+3]
       56 GETTABLEKS                       R11 R10 K17 ["count"]
       58 JUMPIF                           R11 ; [+1]
       59 LOADN                            R11 0
       60 JUMPIFNOT                        R10 ; [+3]
       61 GETTABLEKS                       R12 R10 K18 ["className"]
       63 JUMPIF                           R12 ; [+1]
       64 LOADNIL                          R12
       65 LOADN                            R14 0
       66 JUMPIFLT                         R14 R11 ; [+2]
       68 LOADB                            R13 0 +1
       69 LOADB                            R13 1
       70 GETUPVAL                         R14 1
       71 GETTABLEKS                       R14 R14 K19 ["useCallback"]
       73 NEWCLOSURE                       R15 P0
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R6
       76 NEWTABLE                         R16 0 2
       78 MOVE                             R17 R8
       79 MOVE                             R18 R6
       80 SETLIST                          R16 R17 2 [1]
       82 CALL                             R14 2 1
       83 GETUPVAL                         R15 1
       84 GETTABLEKS                       R15 R15 K20 ["useMemo"]
       86 NEWCLOSURE                       R16 P1
       87 CAPTURE                          VAL R11
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R13
       91 NEWTABLE                         R17 0 4
       93 GETUPVAL                         R18 4
       94 GETTABLEKS                       R18 R18 K21 ["locale"]
       96 MOVE                             R19 R7
       97 MOVE                             R20 R11
       98 MOVE                             R21 R13
       99 SETLIST                          R17 R18 4 [1]
      101 CALL                             R15 2 1
      102 GETUPVAL                         R16 5
      103 MOVE                             R17 R12
      104 CALL                             R16 1 1
      105 GETUPVAL                         R17 6
      106 CALL                             R17 0 1
      107 GETUPVAL                         R18 7
      108 GETUPVAL                         R19 8
      109 GETTABLEKS                       R19 R19 K22 ["Root"]
      111 DUPTABLE                         R20 K26 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      112 GETTABLEKS                       R21 R0 K23 ["LayoutOrder"]
      114 SETTABLEKS                       R21 R20 K23 ["LayoutOrder"]
      116 GETTABLEKS                       R21 R0 K11 ["expanded"]
      118 SETTABLEKS                       R21 R20 K11 ["expanded"]
      120 GETTABLEKS                       R21 R0 K24 ["contentId"]
      122 SETTABLEKS                       R21 R20 K24 ["contentId"]
      124 GETTABLEKS                       R21 R0 K25 ["editThisContent"]
      126 SETTABLEKS                       R21 R20 K25 ["editThisContent"]
      128 DUPTABLE                         R21 K30 [{"Header", "Persist", "Content"}]
      129 GETUPVAL                         R22 7
      130 GETUPVAL                         R23 8
      131 GETTABLEKS                       R23 R23 K27 ["Header"]
      133 DUPTABLE                         R24 K32 [{"LayoutOrder", "testId"}]
      134 MOVE                             R25 R17
      135 CALL                             R25 0 1
      136 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      138 GETUPVAL                         R25 9
      139 GETTABLEKS                       R25 R25 K33 ["PrimitiveGen"]
      141 GETTABLEKS                       R25 R25 K34 ["Expand"]
      143 SETTABLEKS                       R25 R24 K31 ["testId"]
      145 DUPTABLE                         R25 K37 [{"Text", "ChipArea"}]
      146 GETUPVAL                         R26 7
      147 GETUPVAL                         R27 10
      148 DUPTABLE                         R28 K39 [{["tag"] = "size-0-0 auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      149 GETTABLEKS                       R29 R15 K40 ["Inserted"]
      151 SETTABLEKS                       R29 R28 K35 ["Text"]
      153 MOVE                             R29 R17
      154 CALL                             R29 0 1
      155 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      157 CALL                             R26 2 1
      158 SETTABLEKS                       R26 R25 K35 ["Text"]
      160 MOVE                             R26 R13
      161 JUMPIFNOT                        R26 ; [+38]
      162 GETUPVAL                         R26 7
      163 GETUPVAL                         R27 11
      164 DUPTABLE                         R28 K42 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      165 MOVE                             R29 R17
      166 CALL                             R29 0 1
      167 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      169 DUPTABLE                         R29 K44 [{"AssetLink"}]
      170 GETUPVAL                         R30 7
      171 GETUPVAL                         R31 12
      172 DUPTABLE                         R32 K51 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      173 GETTABLEKS                       R33 R15 K52 ["DisplayName"]
      175 SETTABLEKS                       R33 R32 K45 ["text"]
      177 GETTABLEKS                       R33 R16 K53 ["Image"]
      179 SETTABLEKS                       R33 R32 K46 ["leading"]
      181 SETTABLEKS                       R14 R32 K47 ["onActivated"]
      183 GETUPVAL                         R33 13
      184 GETTABLEKS                       R33 R33 K54 ["Enums"]
      186 GETTABLEKS                       R33 R33 K55 ["ChipSize"]
      188 GETTABLEKS                       R33 R33 K56 ["Small"]
      190 SETTABLEKS                       R33 R32 K50 ["size"]
      192 MOVE                             R33 R17
      193 CALL                             R33 0 1
      194 SETTABLEKS                       R33 R32 K23 ["LayoutOrder"]
      196 CALL                             R30 2 1
      197 SETTABLEKS                       R30 R29 K43 ["AssetLink"]
      199 CALL                             R26 3 1
      200 SETTABLEKS                       R26 R25 K36 ["ChipArea"]
      202 CALL                             R22 3 1
      203 SETTABLEKS                       R22 R21 K27 ["Header"]
      205 GETUPVAL                         R22 14
      206 MOVE                             R23 R9
      207 CALL                             R22 1 1
      208 SETTABLEKS                       R22 R21 K28 ["Persist"]
      210 GETUPVAL                         R22 7
      211 GETUPVAL                         R23 8
      212 GETTABLEKS                       R23 R23 K29 ["Content"]
      214 DUPTABLE                         R24 K58 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      215 MOVE                             R25 R17
      216 CALL                             R25 0 1
      217 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      219 DUPTABLE                         R25 K60 [{"Preview"}]
      220 GETUPVAL                         R26 7
      221 GETUPVAL                         R27 15
      222 DUPTABLE                         R28 K62 [{"previewImage", "LayoutOrder"}]
      223 SETTABLEKS                       R9 R28 K61 ["previewImage"]
      225 MOVE                             R29 R17
      226 CALL                             R29 0 1
      227 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      229 CALL                             R26 2 1
      230 SETTABLEKS                       R26 R25 K59 ["Preview"]
      232 CALL                             R22 3 1
      233 SETTABLEKS                       R22 R21 K29 ["Content"]
      235 CALL                             R18 3 -1
      236 RETURN                           R18 -1

PROTO_21:
        0 DUPTABLE                         R0 K3 [{"GenerationFailed", "GenerationCancelled", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["PrimitiveGen"]
        3 LOADK                            R4 K0 ["GenerationFailed"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["GenerationFailed"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["PrimitiveGen"]
       11 LOADK                            R4 K1 ["GenerationCancelled"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["GenerationCancelled"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["ToolConfirmation"]
       19 LOADK                            R4 K7 ["ToolCallRejected"]
       20 DUPTABLE                         R5 K9 [{"toolName"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K8 ["toolName"]
       24 NAMECALL                         R1 R1 K5 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["ToolRejected"]
       29 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["name"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADK                            R2 K2 [""]
        7 GETTABLEKS                       R3 R0 K3 ["toolResult"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R3 K4 ["structuredContent"]
       12 JUMPIF                           R4 ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R4 K5 ["errorType"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADK                            R5 K6 ["General"]
       19 JUMPIFEQKNIL                     R4 ; [+6]
       21 LOADB                            R6 1
       22 GETTABLEKS                       R7 R4 K7 ["cancelled"]
       24 JUMPIFEQKB                       R7 TRUE ; [+7]
       26 GETUPVAL                         R8 0
       27 GETTABLE                         R7 R8 R5
       28 JUMPIFEQKB                       R7 TRUE ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 JUMPIFNOT                        R4 ; [+3]
       33 GETTABLEKS                       R7 R4 K8 ["errorMessage"]
       35 JUMPIF                           R7 ; [+1]
       36 LOADNIL                          R7
       37 GETUPVAL                         R8 1
       38 CALL                             R8 0 1
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       42 DUPCLOSURE                       R10 K10 [PROTO_0]
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 NEWTABLE                         R11 0 1
       47 GETUPVAL                         R12 4
       48 GETTABLEKS                       R12 R12 K11 ["locale"]
       50 SETLIST                          R11 R12 1 [1]
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       56 NEWCLOSURE                       R11 P1
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R12 0 2
       61 GETUPVAL                         R13 4
       62 GETTABLEKS                       R13 R13 K11 ["locale"]
       64 MOVE                             R14 R2
       65 SETLIST                          R12 R13 2 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R11 5
       69 GETTABLEKS                       R11 R11 K12 ["deriveToolStatus"]
       71 GETTABLEKS                       R12 R0 K0 ["toolUse"]
       73 GETTABLEKS                       R13 R0 K3 ["toolResult"]
       75 CALL                             R11 2 1
       76 GETUPVAL                         R13 6
       77 GETTABLEKS                       R13 R13 K13 ["Rejected"]
       79 JUMPIFEQ                         R11 R13 ; [+2]
       81 LOADB                            R12 0 +1
       82 LOADB                            R12 1
       83 LOADNIL                          R13
       84 JUMPIFNOT                        R12 ; [+3]
       85 GETTABLEKS                       R13 R10 K14 ["ToolRejected"]
       87 JUMP                             ; [+6]
       88 JUMPIFNOT                        R6 ; [+3]
       89 GETTABLEKS                       R13 R10 K15 ["GenerationCancelled"]
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R13 R10 K16 ["GenerationFailed"]
       94 JUMPIFNOT                        R12 ; [+2]
       95 LOADNIL                          R14
       96 JUMP                             ; [+4]
       97 GETTABLE                         R14 R9 R5
       98 JUMPIF                           R14 ; [+2]
       99 GETTABLEKS                       R14 R9 K6 ["General"]
      101 JUMPIFNOTEQKNIL                  R14 ; [+2]
      103 LOADB                            R15 0 +1
      104 LOADB                            R15 1
      105 GETUPVAL                         R16 7
      106 CALL                             R16 0 1
      107 GETUPVAL                         R17 8
      108 GETUPVAL                         R18 9
      109 GETTABLEKS                       R18 R18 K17 ["Root"]
      111 DUPTABLE                         R19 K22 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      112 GETTABLEKS                       R20 R0 K18 ["LayoutOrder"]
      114 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      116 SETTABLEKS                       R15 R19 K19 ["expanded"]
      118 GETTABLEKS                       R20 R0 K20 ["contentId"]
      120 SETTABLEKS                       R20 R19 K20 ["contentId"]
      122 GETTABLEKS                       R20 R0 K21 ["editThisContent"]
      124 SETTABLEKS                       R20 R19 K21 ["editThisContent"]
      126 DUPTABLE                         R20 K25 [{"Header", "Content"}]
      127 GETUPVAL                         R21 8
      128 GETUPVAL                         R22 9
      129 GETTABLEKS                       R22 R22 K23 ["Header"]
      131 DUPTABLE                         R23 K27 [{"IsDisabled", "LayoutOrder"}]
      132 NOT                              R24 R15
      133 SETTABLEKS                       R24 R23 K26 ["IsDisabled"]
      135 MOVE                             R24 R16
      136 CALL                             R24 0 1
      137 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      139 DUPTABLE                         R24 K30 [{"StatusIcon", "Text"}]
      140 GETUPVAL                         R25 8
      141 GETUPVAL                         R26 10
      142 DUPTABLE                         R27 K34 [{"name", "style", "size", "variant", "LayoutOrder"}]
      143 GETUPVAL                         R28 11
      144 GETTABLEKS                       R28 R28 K35 ["Enums"]
      146 GETTABLEKS                       R28 R28 K36 ["IconName"]
      148 GETTABLEKS                       R28 R28 K37 ["TriangleExclamation"]
      150 SETTABLEKS                       R28 R27 K1 ["name"]
      152 JUMPIFNOT                        R6 ; [+7]
      153 GETTABLEKS                       R28 R8 K38 ["Color"]
      155 GETTABLEKS                       R28 R28 K39 ["System"]
      157 GETTABLEKS                       R28 R28 K40 ["Warning"]
      159 JUMP                             ; [+6]
      160 GETTABLEKS                       R28 R8 K38 ["Color"]
      162 GETTABLEKS                       R28 R28 K39 ["System"]
      164 GETTABLEKS                       R28 R28 K41 ["Alert"]
      166 SETTABLEKS                       R28 R27 K31 ["style"]
      168 GETUPVAL                         R28 11
      169 GETTABLEKS                       R28 R28 K35 ["Enums"]
      171 GETTABLEKS                       R28 R28 K42 ["IconSize"]
      173 GETTABLEKS                       R28 R28 K43 ["Small"]
      175 SETTABLEKS                       R28 R27 K32 ["size"]
      177 GETUPVAL                         R28 11
      178 GETTABLEKS                       R28 R28 K35 ["Enums"]
      180 GETTABLEKS                       R28 R28 K44 ["IconVariant"]
      182 GETTABLEKS                       R28 R28 K45 ["Filled"]
      184 SETTABLEKS                       R28 R27 K33 ["variant"]
      186 MOVE                             R28 R16
      187 CALL                             R28 0 1
      188 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      190 CALL                             R25 2 1
      191 SETTABLEKS                       R25 R24 K28 ["StatusIcon"]
      193 GETUPVAL                         R25 8
      194 GETUPVAL                         R26 12
      195 DUPTABLE                         R27 K48 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      196 SETTABLEKS                       R13 R27 K29 ["Text"]
      198 MOVE                             R28 R16
      199 CALL                             R28 0 1
      200 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      202 CALL                             R25 2 1
      203 SETTABLEKS                       R25 R24 K29 ["Text"]
      205 CALL                             R21 3 1
      206 SETTABLEKS                       R21 R20 K23 ["Header"]
      208 JUMPIFNOT                        R14 ; [+79]
      209 GETUPVAL                         R21 8
      210 GETUPVAL                         R22 9
      211 GETTABLEKS                       R22 R22 K24 ["Content"]
      213 DUPTABLE                         R23 K50 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      214 MOVE                             R24 R16
      215 CALL                             R24 0 1
      216 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      218 DUPTABLE                         R24 K53 [{"TemplateMessage", "ErrorDetail"}]
      219 GETUPVAL                         R25 8
      220 GETUPVAL                         R26 12
      221 DUPTABLE                         R27 K55 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-muted text-wrap", ["Text"], ["LayoutOrder"]}]
      222 SETTABLEKS                       R14 R27 K29 ["Text"]
      224 MOVE                             R28 R16
      225 CALL                             R28 0 1
      226 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      228 CALL                             R25 2 1
      229 SETTABLEKS                       R25 R24 K51 ["TemplateMessage"]
      231 MOVE                             R25 R7
      232 JUMPIFNOT                        R25 ; [+51]
      233 GETUPVAL                         R25 8
      234 GETUPVAL                         R26 13
      235 DUPTABLE                         R27 K57 [{["tag"] = "size-full-0 auto-y padding-small radius-small bg-shift-200", ["LayoutOrder"]}]
      236 MOVE                             R28 R16
      237 CALL                             R28 0 1
      238 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      240 DUPTABLE                         R28 K59 [{"ErrorText"}]
      241 GETUPVAL                         R29 8
      242 LOADK                            R30 K60 ["TextBox"]
      243 DUPTABLE                         R31 K75 [{["Text"], ["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["TextWrapped"] = True, ["TextXAlignment"], ["TextColor3"], ["FontFace"], ["TextSize"] = 12, ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      244 SETTABLEKS                       R7 R31 K29 ["Text"]
      246 GETIMPORT                        R32 K78 [Enum.TextXAlignment.Left]
      248 SETTABLEKS                       R32 R31 K66 ["TextXAlignment"]
      250 GETTABLEKS                       R32 R8 K38 ["Color"]
      252 GETTABLEKS                       R32 R32 K24 ["Content"]
      254 GETTABLEKS                       R32 R32 K79 ["Muted"]
      256 GETTABLEKS                       R32 R32 K80 ["Color3"]
      258 SETTABLEKS                       R32 R31 K67 ["TextColor3"]
      260 GETUPVAL                         R32 14
      261 GETTABLEKS                       R32 R32 K81 ["CODE_FONT"]
      263 SETTABLEKS                       R32 R31 K68 ["FontFace"]
      265 GETIMPORT                        R32 K84 [UDim2.fromScale]
      267 LOADN                            R33 1
      268 LOADN                            R34 0
      269 CALL                             R32 2 1
      270 SETTABLEKS                       R32 R31 K71 ["Size"]
      272 GETIMPORT                        R32 K86 [Enum.AutomaticSize.Y]
      274 SETTABLEKS                       R32 R31 K72 ["AutomaticSize"]
      276 MOVE                             R32 R16
      277 CALL                             R32 0 1
      278 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      280 CALL                             R29 2 1
      281 SETTABLEKS                       R29 R28 K58 ["ErrorText"]
      283 CALL                             R25 3 1
      284 SETTABLEKS                       R25 R24 K52 ["ErrorDetail"]
      286 CALL                             R21 3 1
      287 JUMP                             ; [+1]
      288 LOADNIL                          R21
      289 SETTABLEKS                       R21 R20 K24 ["Content"]
      291 CALL                             R17 3 -1
      292 RETURN                           R17 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deriveToolStatus"]
        3 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        5 GETTABLEKS                       R3 R0 K2 ["toolResult"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Completed"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+6]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K4 ["Failed"]
       21 JUMPIFEQ                         R1 R2 ; [+6]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K5 ["Rejected"]
       26 JUMPIFNOTEQ                      R1 R2 ; [+6]
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 4
       30 MOVE                             R4 R0
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1
       33 GETUPVAL                         R2 2
       34 GETUPVAL                         R3 5
       35 MOVE                             R4 R0
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Accordion"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K13 ["Actions"]
       28 GETTABLEKS                       R4 R4 K14 ["ChannelActionsContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K15 ["Flags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["Foundation"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K18 ["Features"]
       47 GETTABLEKS                       R7 R7 K19 ["Gen3dUtils"]
       49 GETTABLEKS                       R7 R7 K20 ["Gen3dConstants"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K10 ["Components"]
       56 GETTABLEKS                       R8 R8 K12 ["Contexts"]
       58 GETTABLEKS                       R8 R8 K13 ["Actions"]
       60 GETTABLEKS                       R8 R8 K21 ["InstanceActionsContext"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R0 K10 ["Components"]
       67 GETTABLEKS                       R9 R9 K12 ["Contexts"]
       69 GETTABLEKS                       R9 R9 K13 ["Actions"]
       71 GETTABLEKS                       R9 R9 K22 ["PrimitiveGenActionsContext"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R0 K23 ["Util"]
       78 GETTABLEKS                       R10 R10 K24 ["PrimitiveGen"]
       80 GETTABLEKS                       R10 R10 K25 ["PrimitiveGenChannel"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K9 [require]
       85 GETTABLEKS                       R11 R0 K16 ["Parent"]
       87 GETTABLEKS                       R11 R11 K26 ["React"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R12 R0 K16 ["Parent"]
       94 GETTABLEKS                       R12 R12 K27 ["ReactUtils"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R0 K10 ["Components"]
      101 GETTABLEKS                       R13 R13 K28 ["ShimmerGradient"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R0 K23 ["Util"]
      108 GETTABLEKS                       R14 R14 K29 ["TestIds"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R0 K30 ["Resources"]
      115 GETTABLEKS                       R15 R15 K31 ["Localization"]
      117 GETTABLEKS                       R15 R15 K32 ["Translator"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K9 [require]
      122 GETTABLEKS                       R16 R0 K33 ["Types"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R0 K18 ["Features"]
      129 GETTABLEKS                       R17 R17 K19 ["Gen3dUtils"]
      131 GETTABLEKS                       R17 R17 K34 ["ViewportPreviewUtils"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R0 K23 ["Util"]
      138 GETTABLEKS                       R18 R18 K35 ["WidgetUtils"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R0 K36 ["Hooks"]
      145 GETTABLEKS                       R19 R19 K37 ["useClassIcon"]
      147 CALL                             R18 1 1
      148 GETTABLEKS                       R19 R17 K38 ["ToolStatus"]
      150 GETTABLEKS                       R20 R5 K39 ["Chip"]
      152 GETTABLEKS                       R21 R5 K40 ["Icon"]
      154 GETTABLEKS                       R22 R5 K41 ["IconButton"]
      156 GETTABLEKS                       R23 R5 K42 ["Image"]
      158 GETTABLEKS                       R24 R5 K43 ["Skeleton"]
      160 GETTABLEKS                       R25 R5 K44 ["Text"]
      162 GETTABLEKS                       R26 R5 K45 ["View"]
      164 GETTABLEKS                       R27 R5 K36 ["Hooks"]
      166 GETTABLEKS                       R27 R27 K46 ["useTokens"]
      168 GETTABLEKS                       R28 R11 K47 ["createNextOrder"]
      170 GETTABLEKS                       R29 R10 K48 ["createElement"]
      172 NEWTABLE                         R30 0 0
      174 GETTABLEKS                       R31 R4 K49 ["FIntPrimGenLongRunThresholdSec"]
      176 GETTABLEKS                       R32 R6 K50 ["PREVIEW_HEIGHT"]
      178 DUPTABLE                         R33 K59 [{["CancelByUser"] = True, ["DmHealthChecking"] = True, ["EmptyPrompt"] = True, ["ImageFormat"] = True, ["PluginVersionMismatch"] = True, ["StudioLeftEditMode"] = True, ["TooManyConcurrentJobs"] = True}]
      179 DUPCLOSURE                       R34 K60 [PROTO_1]
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R14
      183 DUPCLOSURE                       R35 K61 [PROTO_5]
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R31
      186 DUPCLOSURE                       R36 K62 [PROTO_6]
      187 DUPCLOSURE                       R37 K63 [PROTO_10]
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R16
      194 DUPCLOSURE                       R38 K64 [PROTO_11]
      195 CAPTURE                          VAL R29
      196 CAPTURE                          VAL R26
      197 DUPCLOSURE                       R39 K65 [PROTO_12]
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R29
      200 DUPCLOSURE                       R40 K66 [PROTO_13]
      201 CAPTURE                          VAL R29
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R32
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R28
      206 CAPTURE                          VAL R26
      207 CAPTURE                          VAL R22
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R38
      211 DUPCLOSURE                       R41 K67 [PROTO_17]
      212 CAPTURE                          VAL R30
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R37
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R31
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R35
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R29
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R39
      230 CAPTURE                          VAL R40
      231 DUPCLOSURE                       R42 K68 [PROTO_20]
      232 CAPTURE                          VAL R30
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R37
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R29
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R13
      242 CAPTURE                          VAL R25
      243 CAPTURE                          VAL R26
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R5
      246 CAPTURE                          VAL R39
      247 CAPTURE                          VAL R40
      248 DUPCLOSURE                       R43 K69 [PROTO_22]
      249 CAPTURE                          VAL R33
      250 CAPTURE                          VAL R27
      251 CAPTURE                          VAL R10
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R19
      256 CAPTURE                          VAL R28
      257 CAPTURE                          VAL R29
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R21
      260 CAPTURE                          VAL R5
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R26
      263 CAPTURE                          VAL R15
      264 DUPCLOSURE                       R44 K70 [PROTO_23]
      265 CAPTURE                          VAL R17
      266 CAPTURE                          VAL R19
      267 CAPTURE                          VAL R29
      268 CAPTURE                          VAL R42
      269 CAPTURE                          VAL R43
      270 CAPTURE                          VAL R41
      271 DUPTABLE                         R45 K75 [{["Type"] = "PrimitiveGen", ["ContentWidget"], ["Serialization"] = }]
      272 GETTABLEKS                       R46 R10 K76 ["memo"]
      274 MOVE                             R47 R44
      275 CALL                             R46 1 1
      276 SETTABLEKS                       R46 R45 K72 ["ContentWidget"]
      278 RETURN                           R45 1
