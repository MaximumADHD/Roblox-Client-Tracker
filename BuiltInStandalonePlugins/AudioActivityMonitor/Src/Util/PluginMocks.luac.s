PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R1 R3 R2
        4 DUPTABLE                         R3 K1 [{"Disconnect"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
       10 RETURN                           R3 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 MOVE                             R6 R5
        7 GETVARARGS                       R7 -1
        8 CALL                             R6 -1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 2 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R1 K0 ["Connect"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K1 ["Fire"]
       12 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"CurrentDataModelType", "CurrentDataModelTypeAboutToChange", "CurrentDataModelTypeChanged"}]
        1 SETTABLEKS                       R0 R1 K0 ["CurrentDataModelType"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["_createSignal"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["CurrentDataModelTypeAboutToChange"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["_createSignal"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K2 ["CurrentDataModelTypeChanged"]
       15 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+6]
        7 GETIMPORT                        R1 K4 [table.clone]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 RETURN                           R1 1
       12 MOVE                             R1 R0
       13 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 JUMPIF                           R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["_createSignal"]
        7 CALL                             R2 0 1
        8 SETTABLE                         R2 R1 R0
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 0
        2 GETTABLE                         R5 R6 R1
        3 JUMPIF                           R5 ; [+4]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["_createSignal"]
        7 CALL                             R5 0 1
        8 SETTABLE                         R5 R4 R1
        9 GETUPVAL                         R4 0
       10 GETTABLE                         R3 R4 R1
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K1 ["Connect"]
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1

PROTO_8:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIF                           R4 ; [+4]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["_createSignal"]
        8 CALL                             R4 0 1
        9 SETTABLE                         R4 R3 R1
       10 GETUPVAL                         R3 0
       11 GETTABLE                         R2 R3 R1
       12 GETVARARGS                       R4 -1
       13 NAMECALL                         R2 R2 K1 ["Fire"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 FASTCALL1                        TYPEOF R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+7]
        9 GETIMPORT                        R4 K4 [table.clone]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 RETURN                           R2 1
       15 MOVE                             R2 R3
       16 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R6 R2
        3 GETIMPORT                        R5 K1 [typeof]
        5 CALL                             R5 1 1
        6 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+6]
        8 GETIMPORT                        R4 K4 [table.clone]
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMP                             ; [+1]
       13 MOVE                             R4 R2
       14 SETTABLE                         R4 R3 R1
       15 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R5 K2 [{"HostDataModelType", "MultipleDocumentInterfaceInstance"}]
        4 SETTABLEKS                       R2 R5 K0 ["HostDataModelType"]
        6 DUPTABLE                         R6 K4 [{"FocusedDataModelSession"}]
        7 SETTABLEKS                       R3 R6 K3 ["FocusedDataModelSession"]
        9 SETTABLEKS                       R6 R5 K1 ["MultipleDocumentInterfaceInstance"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["fn"]
       14 NEWCLOSURE                       R7 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CALL                             R6 1 1
       18 SETTABLEKS                       R6 R5 K6 ["OnInvoke"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K5 ["fn"]
       23 NEWCLOSURE                       R7 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K7 ["Invoke"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K5 ["fn"]
       32 NEWCLOSURE                       R7 P3
       33 CAPTURE                          VAL R1
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K8 ["GetSetting"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K5 ["fn"]
       40 NEWCLOSURE                       R7 P4
       41 CAPTURE                          VAL R1
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R6 R5 K9 ["SetSetting"]
       45 RETURN                           R5 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["_createMockSession"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 NEWTABLE                         R5 0 0
       11 MOVE                             R6 R0
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R11 R11 K1 ["_createMockPlugin"]
       18 MOVE                             R12 R2
       19 MOVE                             R13 R3
       20 MOVE                             R14 R10
       21 MOVE                             R15 R4
       22 CALL                             R11 4 1
       23 SETTABLE                         R11 R5 R10
       24 FORGLOOP                         R6 2 ; [-10]
       26 MOVE                             R6 R5
       27 MOVE                             R7 R4
       28 RETURN                           R6 2

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETIMPORT                        R1 K2 [Vector2.zero]
        4 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R2 K4 [{"AbsoluteSize", "WindowFocused", "WindowFocusReleased", "GetRelativeMousePosition"}]
        1 MOVE                             R3 R1
        2 JUMPIF                           R3 ; [+2]
        3 GETIMPORT                        R3 K7 [Vector2.zero]
        5 SETTABLEKS                       R3 R2 K0 ["AbsoluteSize"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K8 ["_createSignal"]
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K1 ["WindowFocused"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K8 ["_createSignal"]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K2 ["WindowFocusReleased"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R3 R2 K3 ["GetRelativeMousePosition"]
       23 RETURN                           R2 1

PROTO_15:
        0 DUPTABLE                         R1 K24 [{[1], ["rows"], ["numVoices"] = 0, ["numPlayingVoices"] = 0, ["activityValues"], ["currentFrameTimestamp"] = 0, ["sortMethod"], ["toggleSortColumn"], ["lookbackAmount"] = 0, ["maxLookbackAmount"] = 0, ["setLookbackAmount"], ["onLookbackScrubFinished"], ["isPaused"] = False, ["togglePaused"], ["pausedFrames"], ["selectedIds"], ["selectId"], ["clearSelection"], ["meteringMode"] = "Disabled", ["setMeteringMode"], ["reloadMeteringModeFromSettings"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["columnDefinitions"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["rows"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K5 ["activityValues"]
       13 DUPTABLE                         R2 K27 [{["Ascending"] = True}]
       14 SETTABLEKS                       R2 R1 K7 ["sortMethod"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K28 ["fn"]
       19 CALL                             R2 0 1
       20 SETTABLEKS                       R2 R1 K8 ["toggleSortColumn"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K28 ["fn"]
       25 CALL                             R2 0 1
       26 SETTABLEKS                       R2 R1 K11 ["setLookbackAmount"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K28 ["fn"]
       31 CALL                             R2 0 1
       32 SETTABLEKS                       R2 R1 K12 ["onLookbackScrubFinished"]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K28 ["fn"]
       37 CALL                             R2 0 1
       38 SETTABLEKS                       R2 R1 K15 ["togglePaused"]
       40 NEWTABLE                         R2 0 0
       42 SETTABLEKS                       R2 R1 K16 ["pausedFrames"]
       44 NEWTABLE                         R2 0 0
       46 SETTABLEKS                       R2 R1 K17 ["selectedIds"]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K28 ["fn"]
       51 CALL                             R2 0 1
       52 SETTABLEKS                       R2 R1 K18 ["selectId"]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K28 ["fn"]
       57 CALL                             R2 0 1
       58 SETTABLEKS                       R2 R1 K19 ["clearSelection"]
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K28 ["fn"]
       63 CALL                             R2 0 1
       64 SETTABLEKS                       R2 R1 K22 ["setMeteringMode"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K28 ["fn"]
       69 CALL                             R2 0 1
       70 SETTABLEKS                       R2 R1 K23 ["reloadMeteringModeFromSettings"]
       72 GETUPVAL                         R2 1
       73 GETTABLEKS                       R2 R2 K29 ["assign"]
       75 MOVE                             R3 R1
       76 MOVE                             R4 R0
       77 CALL                             R2 2 0
       78 RETURN                           R1 1

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_17:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 DUPTABLE                         R1 K24 [{[1] = 0, ["totalColumnWidth"] = 0, ["columnVisibilities"], ["columnWidths"], ["scrollY"] = 0, ["setScrollY"], ["viewportHeight"] = 0, ["setViewportHeight"], ["headerOffset"], ["setHeaderOffset"], ["isContextMenuOpen"] = False, ["contextMenuShowsColumnList"] = False, ["contextMenuShowsMeteringOptions"] = False, ["contextMenuPosition"], ["openContextMenu"], ["closeContextMenu"], ["toggleColumnVisibility"], ["reloadColumnsFromSettings"], ["resizeColumnTo"], ["onColumnResizeFinished"], ["getColumnDividers"], ["getVisibleRowRange"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K3 ["columnVisibilities"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K4 ["columnWidths"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K25 ["fn"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K6 ["setScrollY"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K25 ["fn"]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K8 ["setViewportHeight"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K26 ["createBinding"]
       24 GETIMPORT                        R3 K29 [UDim2.new]
       26 CALL                             R3 0 -1
       27 CALL                             R2 -1 1
       28 SETTABLEKS                       R2 R1 K9 ["headerOffset"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K25 ["fn"]
       33 CALL                             R2 0 1
       34 SETTABLEKS                       R2 R1 K10 ["setHeaderOffset"]
       36 GETIMPORT                        R2 K32 [Vector2.zero]
       38 SETTABLEKS                       R2 R1 K15 ["contextMenuPosition"]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K25 ["fn"]
       43 CALL                             R2 0 1
       44 SETTABLEKS                       R2 R1 K16 ["openContextMenu"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K25 ["fn"]
       49 CALL                             R2 0 1
       50 SETTABLEKS                       R2 R1 K17 ["closeContextMenu"]
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K25 ["fn"]
       55 CALL                             R2 0 1
       56 SETTABLEKS                       R2 R1 K18 ["toggleColumnVisibility"]
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K25 ["fn"]
       61 CALL                             R2 0 1
       62 SETTABLEKS                       R2 R1 K19 ["reloadColumnsFromSettings"]
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K25 ["fn"]
       67 CALL                             R2 0 1
       68 SETTABLEKS                       R2 R1 K20 ["resizeColumnTo"]
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K25 ["fn"]
       73 CALL                             R2 0 1
       74 SETTABLEKS                       R2 R1 K21 ["onColumnResizeFinished"]
       76 GETUPVAL                         R2 0
       77 GETTABLEKS                       R2 R2 K25 ["fn"]
       79 DUPCLOSURE                       R3 K33 [PROTO_16]
       80 CALL                             R2 1 1
       81 SETTABLEKS                       R2 R1 K22 ["getColumnDividers"]
       83 GETUPVAL                         R2 0
       84 GETTABLEKS                       R2 R2 K25 ["fn"]
       86 DUPCLOSURE                       R3 K34 [PROTO_17]
       87 CALL                             R2 1 1
       88 SETTABLEKS                       R2 R1 K23 ["getVisibleRowRange"]
       90 GETUPVAL                         R2 2
       91 GETTABLEKS                       R2 R2 K35 ["assign"]
       93 MOVE                             R3 R1
       94 MOVE                             R4 R0
       95 CALL                             R2 2 0
       96 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["lastInstance"]
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["lastProps"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 LOADK                            R2 K2 ["Frame"]
        7 DUPTABLE                         R3 K4 [{"ref"}]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R4 R3 K3 ["ref"]
       12 GETTABLEKS                       R4 R0 K5 ["children"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["lastProps"]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["lastInstance"]
        8 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R0 K3 [{[1] = , ["lastInstance"] = }]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R1 R0 K4 ["component"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K5 ["reset"]
       10 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R2 ; [+2]
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+5]
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 JUMP                             ; [+10]
       11 GETUPVAL                         R2 0
       12 FASTCALL1                        TYPEOF R2 ; [+2]
       13 GETIMPORT                        R1 K1 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+4]
       18 GETUPVAL                         R1 0
       19 SETTABLEKS                       R0 R1 K4 ["current"]
       21 JUMPIFNOT                        R0 ; [+3]
       22 GETUPVAL                         R1 1
       23 GETUPVAL                         R2 2
       24 SETTABLE                         R2 R1 R0
       25 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      2
        1 JUMPIFEQKS                       R0 K0 ["UIDragDetector"] ; [+7]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 GETVARARGS                       R5 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1
        9 GETIMPORT                        R2 K3 [table.clone]
       11 MOVE                             R3 R1
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K4 ["ref"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R2 K4 ["ref"]
       24 GETUPVAL                         R4 0
       25 LOADK                            R5 K0 ["UIDragDetector"]
       26 MOVE                             R6 R2
       27 GETVARARGS                       R7 -1
       28 CALL                             R4 -1 -1
       29 RETURN                           R4 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 LOADN                            R4 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K0 ["n"]
        7 FASTCALL                         TABLE_UNPACK ; [+2]
        8 GETIMPORT                        R2 K3 [table.unpack]
       10 CALL                             R2 3 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_26:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 LOADK                            R5 K0 ["%* was not captured"]
        4 MOVE                             R7 R0
        5 NAMECALL                         R5 R5 K1 ["format"]
        7 CALL                             R5 2 1
        8 FASTCALL2                        ASSERT R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["Event"]
       17 GETTABLE                         R4 R5 R1
       18 GETTABLE                         R3 R2 R4
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R4 K7 [table.pack]
       23 GETVARARGS                       R5 -1
       24 CALL                             R4 -1 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K8 ["act"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R4
       32 CALL                             R5 1 0
       33 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockImplementation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mockRestore"]
        3 CALL                             R0 0 0
        4 GETIMPORT                        R0 K3 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_29:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["spyOn"]
        5 GETUPVAL                         R2 1
        6 LOADK                            R3 K1 ["createElement"]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R1 R1 K2 ["mockImplementation"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K6 [{"fire", "restore", "cleanup"}]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R3 R2 K3 ["fire"]
       21 NEWCLOSURE                       R3 P2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U2
       24 SETTABLEKS                       R3 R2 K4 ["restore"]
       26 NEWCLOSURE                       R3 P3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R3 R2 K5 ["cleanup"]
       31 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FoundationProvider"]
        6 DUPTABLE                         R3 K4 [{"theme", "device"}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["Enums"]
       10 GETTABLEKS                       R4 R4 K6 ["Theme"]
       12 GETTABLEKS                       R4 R4 K7 ["Dark"]
       14 SETTABLEKS                       R4 R3 K2 ["theme"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["Enums"]
       19 GETTABLEKS                       R4 R4 K8 ["Device"]
       21 GETTABLEKS                       R4 R4 K9 ["Desktop"]
       23 SETTABLEKS                       R4 R3 K3 ["device"]
       25 DUPTABLE                         R4 K11 [{"Localization"}]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K12 ["MockProvider"]
       32 NEWTABLE                         R7 0 0
       34 GETTABLEKS                       R8 R0 K13 ["children"]
       36 CALL                             R5 3 1
       37 SETTABLEKS                       R5 R4 K10 ["Localization"]
       39 CALL                             R1 3 -1
       40 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dev"]
       34 GETTABLEKS                       R5 R5 K11 ["ReactTestingLibrary"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K15 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K16 ["Localization"]
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R0 K6 ["Packages"]
       59 GETTABLEKS                       R9 R9 K10 ["Dev"]
       61 GETTABLEKS                       R9 R9 K17 ["JestGlobals"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R8 K18 ["jest"]
       66 NEWTABLE                         R10 16 0
       68 DUPCLOSURE                       R11 K19 [PROTO_3]
       69 SETTABLEKS                       R11 R10 K20 ["_createSignal"]
       71 DUPCLOSURE                       R11 K21 [PROTO_4]
       72 CAPTURE                          VAL R10
       73 SETTABLEKS                       R11 R10 K22 ["_createMockSession"]
       75 DUPCLOSURE                       R11 K23 [PROTO_5]
       76 DUPCLOSURE                       R12 K24 [PROTO_11]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R12 R10 K25 ["_createMockPlugin"]
       81 DUPCLOSURE                       R12 K26 [PROTO_12]
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R12 R10 K27 ["createMockPlugins"]
       85 DUPCLOSURE                       R12 K28 [PROTO_14]
       86 CAPTURE                          VAL R10
       87 SETTABLEKS                       R12 R10 K29 ["createMockWidget"]
       89 DUPCLOSURE                       R12 K30 [PROTO_15]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R12 R10 K31 ["createMockRowData"]
       94 DUPCLOSURE                       R12 K32 [PROTO_18]
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R12 R10 K33 ["createMockTableState"]
      100 DUPCLOSURE                       R12 K34 [PROTO_22]
      101 CAPTURE                          VAL R3
      102 SETTABLEKS                       R12 R10 K35 ["createMockComponent"]
      104 GETTABLEKS                       R12 R3 K36 ["createElement"]
      106 DUPCLOSURE                       R13 K37 [PROTO_29]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R13 R10 K38 ["captureDragDetectors"]
      113 DUPCLOSURE                       R13 K39 [PROTO_30]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R13 R10 K40 ["MockProviders"]
      119 RETURN                           R10 1
