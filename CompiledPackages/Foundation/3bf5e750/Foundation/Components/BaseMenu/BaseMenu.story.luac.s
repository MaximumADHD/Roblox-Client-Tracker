PROTO_0:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K3 ["id"]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQ                      R6 R7 ; [+6]
       13 GETTABLEKS                       R7 R5 K4 ["isChecked"]
       15 NOT                              R6 R7
       16 SETTABLEKS                       R6 R5 K4 ["isChecked"]
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R2
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 MOVE                             R4 R1
       18 MOVE                             R5 R3
       19 RETURN                           R4 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 ["1"]
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R4 R0 K2 ["controls"]
        7 GETTABLEKS                       R4 R4 K3 ["hasIcon"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETTABLEKS                       R3 R0 K2 ["controls"]
       12 GETTABLEKS                       R3 R3 K4 ["icon"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K5 ["createElement"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K6 ["Root"]
       22 DUPTABLE                         R6 K10 [{"size", "onActivated", "items"}]
       23 GETTABLEKS                       R7 R0 K2 ["controls"]
       25 GETTABLEKS                       R7 R7 K7 ["size"]
       27 SETTABLEKS                       R7 R6 K7 ["size"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R7 R6 K8 ["onActivated"]
       33 NEWTABLE                         R7 0 3
       35 DUPTABLE                         R8 K17 [{["id"] = "1", ["icon"], ["isChecked"], ["isDisabled"] = False, ["text"] = "Item 1"}]
       36 SETTABLEKS                       R3 R8 K4 ["icon"]
       38 JUMPIFEQKS                       R1 K1 ["1"] ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 SETTABLEKS                       R9 R8 K12 ["isChecked"]
       44 DUPTABLE                         R9 K20 [{["id"] = "2", ["icon"], ["isChecked"], ["isDisabled"] = False, ["text"] = "Item 2,000,000,000,000,000,000,000,000"}]
       45 SETTABLEKS                       R3 R9 K4 ["icon"]
       47 JUMPIFEQKS                       R1 K18 ["2"] ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 SETTABLEKS                       R10 R9 K12 ["isChecked"]
       53 DUPTABLE                         R10 K24 [{["id"] = "3", ["icon"], ["isChecked"], ["isDisabled"] = True, ["text"] = "Item 3"}]
       54 SETTABLEKS                       R3 R10 K4 ["icon"]
       56 JUMPIFEQKS                       R1 K21 ["3"] ; [+2]
       58 LOADB                            R11 0 +1
       59 LOADB                            R11 1
       60 SETTABLEKS                       R11 R10 K12 ["isChecked"]
       62 SETLIST                          R7 R8 3 [1]
       64 SETTABLEKS                       R7 R6 K9 ["items"]
       66 CALL                             R4 2 -1
       67 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 3
        3 DUPTABLE                         R3 K6 [{[1] = "1", ["icon"] = "icons/common/robux", ["text"] = "Item 1"}]
        4 DUPTABLE                         R4 K9 [{[1] = "2", ["icon"] = "icons/common/robux", ["text"] = "Item 2"}]
        5 DUPTABLE                         R5 K12 [{[1] = "3", ["icon"] = "icons/common/robux", ["text"] = "Item 3"}]
        6 SETLIST                          R2 R3 3 [1]
        8 CALL                             R1 1 2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K13 ["createElement"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K14 ["Root"]
       15 DUPTABLE                         R5 K18 [{"size", "items", "onActivated"}]
       16 GETTABLEKS                       R6 R0 K19 ["controls"]
       18 GETTABLEKS                       R6 R6 K15 ["size"]
       20 SETTABLEKS                       R6 R5 K15 ["size"]
       22 SETTABLEKS                       R1 R5 K16 ["items"]
       24 SETTABLEKS                       R2 R5 K17 ["onActivated"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Clicked item: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"size", "onActivated", "items"}]
        7 GETTABLEKS                       R4 R0 K6 ["controls"]
        9 GETTABLEKS                       R4 R4 K2 ["size"]
       11 SETTABLEKS                       R4 R3 K2 ["size"]
       13 DUPCLOSURE                       R4 K7 [PROTO_6]
       14 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       16 NEWTABLE                         R4 0 3
       18 DUPTABLE                         R5 K14 [{["id"] = "1", ["icon"] = "icons/common/robux", ["text"] = "Item 1"}]
       19 DUPTABLE                         R6 K17 [{["id"] = "2", ["icon"] = "icons/common/robux", ["text"] = "Item 2"}]
       20 DUPTABLE                         R7 K20 [{["id"] = "3", ["icon"] = "icons/common/robux", ["text"] = "Item 3"}]
       21 SETLIST                          R4 R5 3 [1]
       23 SETTABLEKS                       R4 R3 K4 ["items"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"size", "items", "onActivated"}]
        7 SETTABLEKS                       R0 R3 K2 ["size"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["items"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K6 ["noop"]
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row gap-xxlarge size-full-0 auto-y wrap"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 GETUPVAL                         R4 3
        9 DUPCLOSURE                       R5 K5 [PROTO_8]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U2
       14 CALL                             R3 2 -1
       15 CALL                             R0 -1 -1
       16 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Root"]
        6 DUPTABLE                         R2 K5 [{"width", "items", "onActivated"}]
        7 GETIMPORT                        R3 K8 [UDim.new]
        9 LOADN                            R4 0
       10 LOADN                            R5 300
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K2 ["width"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K3 ["items"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K9 ["noop"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Root"]
        6 DUPTABLE                         R2 K5 [{"width", "items", "onActivated"}]
        7 GETIMPORT                        R3 K8 [UDim.new]
        9 LOADN                            R4 1
       10 LOADN                            R5 0
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K2 ["width"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K3 ["items"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K9 ["noop"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"size", "items", "onActivated"}]
        7 GETTABLEKS                       R4 R0 K6 ["controls"]
        9 GETTABLEKS                       R4 R4 K2 ["size"]
       11 SETTABLEKS                       R4 R3 K2 ["size"]
       13 NEWTABLE                         R4 0 3
       15 DUPTABLE                         R5 K9 [{["title"] = "First Title", ["items"]}]
       16 NEWTABLE                         R6 0 2
       18 DUPTABLE                         R7 K16 [{["id"] = "a1", ["icon"] = "icons/common/robux", ["text"] = "Alpha 1"}]
       19 DUPTABLE                         R8 K19 [{["id"] = "a2", ["text"] = "Alpha 2"}]
       20 SETLIST                          R6 R7 2 [1]
       22 SETTABLEKS                       R6 R5 K3 ["items"]
       24 DUPTABLE                         R6 K21 [{["title"] = "Second Title", ["items"]}]
       25 NEWTABLE                         R7 0 2
       27 DUPTABLE                         R8 K24 [{["id"] = "b1", ["text"] = "Beta 1"}]
       28 DUPTABLE                         R9 K29 [{["id"] = "b2", ["isDisabled"] = True, ["text"] = "Beta 2 (disabled)"}]
       29 SETLIST                          R7 R8 2 [1]
       31 SETTABLEKS                       R7 R6 K3 ["items"]
       33 DUPTABLE                         R7 K30 [{"items"}]
       34 NEWTABLE                         R8 0 1
       36 DUPTABLE                         R9 K33 [{["id"] = "c1", ["text"] = "Untitled group item"}]
       37 SETLIST                          R8 R9 1 [1]
       39 SETTABLEKS                       R8 R7 K3 ["items"]
       41 SETLIST                          R4 R5 3 [1]
       43 SETTABLEKS                       R4 R3 K3 ["items"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K34 ["noop"]
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       51 CALL                             R1 2 -1
       52 RETURN                           R1 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Clicked %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K4 [{"size", "onActivated"}]
        7 GETTABLEKS                       R4 R0 K5 ["controls"]
        9 GETTABLEKS                       R4 R4 K2 ["size"]
       11 SETTABLEKS                       R4 R3 K2 ["size"]
       13 DUPCLOSURE                       R4 K6 [PROTO_13]
       14 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K7 ["Group"]
       22 DUPTABLE                         R6 K12 [{["LayoutOrder"] = 1, ["title"] = "Test title"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K0 ["createElement"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K13 ["Item"]
       29 DUPTABLE                         R9 K20 [{["LayoutOrder"] = 1, ["id"] = "a1", ["text"] = "Text 1", ["icon"] = "icons/common/robux"}]
       30 CALL                             R7 2 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K0 ["createElement"]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K13 ["Item"]
       37 DUPTABLE                         R10 K24 [{["LayoutOrder"] = 2, ["id"] = "a2", ["text"] = "Text 2"}]
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K0 ["createElement"]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K13 ["Item"]
       45 DUPTABLE                         R11 K28 [{["LayoutOrder"] = 3, ["id"] = "a3", ["text"] = "Text 3"}]
       46 CALL                             R9 2 -1
       47 CALL                             R4 -1 1
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["createElement"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K7 ["Group"]
       54 DUPTABLE                         R7 K29 [{["LayoutOrder"] = 2}]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K0 ["createElement"]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K13 ["Item"]
       61 DUPTABLE                         R10 K32 [{["LayoutOrder"] = 1, ["id"] = "b1", ["text"] = "Text 11"}]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K0 ["createElement"]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K13 ["Item"]
       69 DUPTABLE                         R11 K35 [{["LayoutOrder"] = 2, ["id"] = "b2", ["text"] = "Text 22"}]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K0 ["createElement"]
       74 GETUPVAL                         R11 1
       75 GETTABLEKS                       R11 R11 K13 ["Item"]
       77 DUPTABLE                         R12 K38 [{["LayoutOrder"] = 3, ["id"] = "b3", ["text"] = "Text 33"}]
       78 CALL                             R10 2 -1
       79 CALL                             R5 -1 -1
       80 CALL                             R1 -1 -1
       81 RETURN                           R1 -1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 100
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R7 K6 [{[1], ["icon"] = "icons/common/robux", ["text"], ["isChecked"], ["isDisabled"]}]
        7 FASTCALL1                        TOSTRING R4 ; [+3]
        8 MOVE                             R9 R4
        9 GETIMPORT                        R8 K8 [tostring]
       11 CALL                             R8 1 1
       12 SETTABLEKS                       R8 R7 K0 ["id"]
       14 LOADK                            R9 K9 ["Item "]
       15 FASTCALL1                        TOSTRING R4 ; [+3]
       16 MOVE                             R11 R4
       17 GETIMPORT                        R10 K8 [tostring]
       19 CALL                             R10 1 1
       20 CONCAT                           R8 R9 R10
       21 SETTABLEKS                       R8 R7 K3 ["text"]
       23 MODK                             R9 R4 K10 [3]
       24 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 SETTABLEKS                       R8 R7 K4 ["isChecked"]
       30 MODK                             R9 R4 K12 [7]
       31 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 SETTABLEKS                       R8 R7 K5 ["isDisabled"]
       37 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       39 MOVE                             R6 R1
       40 GETIMPORT                        R5 K15 [table.insert]
       42 CALL                             R5 2 0
       43 FORNLOOP                         R2
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K16 ["createElement"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K17 ["Root"]
       50 DUPTABLE                         R4 K23 [{["size"], ["items"], ["maxHeight"] = 500, ["onActivated"]}]
       51 GETTABLEKS                       R5 R0 K24 ["controls"]
       53 GETTABLEKS                       R5 R5 K18 ["size"]
       55 SETTABLEKS                       R5 R4 K18 ["size"]
       57 SETTABLEKS                       R1 R4 K19 ["items"]
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R5 R5 K25 ["noop"]
       62 CALL                             R5 0 1
       63 SETTABLEKS                       R5 R4 K22 ["onActivated"]
       65 CALL                             R2 2 -1
       66 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["BaseMenu"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Enums"]
       42 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["View"]
       51 CALL                             R8 1 1
       52 NEWTABLE                         R9 0 0
       54 GETIMPORT                        R10 K17 [pairs]
       56 GETTABLEKS                       R13 R2 K19 ["Migration"]
       58 GETTABLEKS                       R11 R13 K18 ["uiblox"]
       60 CALL                             R10 1 3
       61 FORGPREP_NEXT                    R10
       62 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
       64 MOVE                             R16 R9
       65 MOVE                             R17 R13
       66 GETIMPORT                        R15 K22 [table.insert]
       68 CALL                             R15 2 0
       69 FORGLOOP                         R10 2 ; [-8]
       71 DUPCLOSURE                       R10 K23 [PROTO_2]
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R11 0 3
       75 DUPTABLE                         R12 K30 [{["id"] = "1", ["icon"] = "icons/common/robux", ["text"] = "Item"}]
       76 DUPTABLE                         R13 K35 [{["id"] = "2", ["icon"] = "icons/menu/gem_medium", ["isChecked"] = True, ["text"] = "Item"}]
       77 DUPTABLE                         R14 K38 [{["id"] = "3", ["isDisabled"] = True, ["text"] = "Item"}]
       78 SETLIST                          R11 R12 3 [1]
       80 DUPTABLE                         R12 K42 [{["summary"] = "BaseMenu", ["stories"], ["controls"]}]
       81 NEWTABLE                         R13 0 9
       83 DUPTABLE                         R14 K46 [{["name"] = "Base", ["story"]}]
       84 DUPCLOSURE                       R15 K47 [PROTO_4]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R15 R14 K45 ["story"]
       89 DUPTABLE                         R15 K49 [{["name"] = "Multi select", ["story"]}]
       90 DUPCLOSURE                       R16 K50 [PROTO_5]
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R16 R15 K45 ["story"]
       96 DUPTABLE                         R16 K52 [{["name"] = "Actions menu", ["story"]}]
       97 DUPCLOSURE                       R17 K53 [PROTO_7]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R6
      100 SETTABLEKS                       R17 R16 K45 ["story"]
      102 DUPTABLE                         R17 K55 [{["name"] = "All Sizes", ["story"]}]
      103 DUPCLOSURE                       R18 K56 [PROTO_9]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R11
      110 SETTABLEKS                       R18 R17 K45 ["story"]
      112 DUPTABLE                         R18 K58 [{["name"] = "Fixed width", ["story"]}]
      113 DUPCLOSURE                       R19 K59 [PROTO_10]
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R19 R18 K45 ["story"]
      120 DUPTABLE                         R19 K61 [{["name"] = "Full width", ["story"]}]
      121 DUPCLOSURE                       R20 K62 [PROTO_11]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R20 R19 K45 ["story"]
      128 DUPTABLE                         R20 K64 [{["name"] = "Grouped", ["story"]}]
      129 DUPCLOSURE                       R21 K65 [PROTO_12]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R21 R20 K45 ["story"]
      135 DUPTABLE                         R21 K67 [{["name"] = "Composites", ["story"]}]
      136 DUPCLOSURE                       R22 K68 [PROTO_14]
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R22 R21 K45 ["story"]
      141 DUPTABLE                         R22 K70 [{["name"] = "Overflow", ["story"]}]
      142 DUPCLOSURE                       R23 K71 [PROTO_15]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R3
      146 SETTABLEKS                       R23 R22 K45 ["story"]
      148 SETLIST                          R13 R14 9 [1]
      150 SETTABLEKS                       R13 R12 K40 ["stories"]
      152 DUPTABLE                         R13 K74 [{["size"], ["icon"], ["hasIcon"] = True}]
      153 GETTABLEKS                       R14 R3 K75 ["values"]
      155 MOVE                             R15 R7
      156 CALL                             R14 1 1
      157 SETTABLEKS                       R14 R13 K72 ["size"]
      159 GETTABLEKS                       R14 R3 K75 ["values"]
      161 MOVE                             R15 R9
      162 CALL                             R14 1 1
      163 SETTABLEKS                       R14 R13 K26 ["icon"]
      165 SETTABLEKS                       R13 R12 K41 ["controls"]
      167 RETURN                           R12 1
