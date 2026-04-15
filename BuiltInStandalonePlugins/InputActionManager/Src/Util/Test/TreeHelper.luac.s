PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["expand-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Expand"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K0 ["ItemExists"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R6
        9 CALL                             R7 2 1
       10 JUMPIF                           R7 ; [+2]
       11 LOADB                            R7 0
       12 RETURN                           R7 1
       13 FORGLOOP                         R2 2 ; [-10]
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["keyDown"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"key"}]
        5 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R3 R2 K1 ["key"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K7 ["keyUp"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K2 [{"key"}]
       15 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R3 R2 K1 ["key"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["node-%*"]
        3 MOVE                             R8 R1
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 CALL                             R3 2 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K2 ["Name button not found"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K5 ["click"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 0
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R0
       25 LOADK                            R7 K6 ["rename-%*--internal-text-input--textbox"]
       26 MOVE                             R9 R1
       27 NAMECALL                         R7 R7 K1 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 CALL                             R4 2 1
       32 FASTCALL2K                       ASSERT R4 K7 ; [+5]
       34 MOVE                             R6 R4
       35 LOADK                            R7 K7 ["Active text box not found"]
       36 GETIMPORT                        R5 K4 [assert]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R5 R6 K5 ["click"]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 GETUPVAL                         R5 2
       45 CALL                             R5 0 0
       46 GETUPVAL                         R5 3
       47 NEWCLOSURE                       R6 P0
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CALL                             R5 1 0
       51 GETUPVAL                         R5 2
       52 CALL                             R5 0 0
       53 GETUPVAL                         R5 3
       54 NEWCLOSURE                       R6 P1
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R0
       58 CALL                             R5 1 0
       59 GETUPVAL                         R5 2
       60 CALL                             R5 0 0
       61 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["keyDown"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"key"}]
        5 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R3 R2 K1 ["key"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K7 ["keyUp"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K2 [{"key"}]
       15 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R3 R2 K1 ["key"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["header"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Tree header not found"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 3
       17 CALL                             R3 0 0
       18 GETUPVAL                         R3 0
       19 MOVE                             R4 R0
       20 LOADK                            R5 K4 ["header-add"]
       21 CALL                             R3 2 1
       22 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K5 ["Header add button not found"]
       26 GETIMPORT                        R4 K3 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 1
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 3
       35 CALL                             R4 0 0
       36 GETUPVAL                         R4 0
       37 MOVE                             R5 R0
       38 LOADK                            R6 K6 ["rename-InputContext--internal-text-input--textbox"]
       39 CALL                             R4 2 1
       40 FASTCALL2K                       ASSERT R4 K7 ; [+5]
       42 MOVE                             R6 R4
       43 LOADK                            R7 K7 ["Active text box not found"]
       44 GETIMPORT                        R5 K3 [assert]
       46 CALL                             R5 2 0
       47 GETUPVAL                         R5 1
       48 NEWCLOSURE                       R6 P2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CALL                             R5 1 0
       52 GETUPVAL                         R5 3
       53 CALL                             R5 0 0
       54 GETUPVAL                         R5 1
       55 NEWCLOSURE                       R6 P3
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R0
       59 CALL                             R5 1 0
       60 GETUPVAL                         R5 3
       61 CALL                             R5 0 0
       62 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["keyDown"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"key"}]
        5 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R3 R2 K1 ["key"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K7 ["keyUp"]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K2 [{"key"}]
       15 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R3 R2 K1 ["key"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["node-%*"]
        3 MOVE                             R8 R1
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 CALL                             R3 2 1
        9 LOADK                            R7 K2 ["Node for context '%*' not found"]
       10 MOVE                             R9 R1
       11 NAMECALL                         R7 R7 K1 ["format"]
       13 CALL                             R7 2 1
       14 MOVE                             R6 R7
       15 FASTCALL2                        ASSERT R3 R6 ; [+4]
       17 MOVE                             R5 R3
       18 GETIMPORT                        R4 K4 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R4 1
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R3
       25 CALL                             R4 1 0
       26 GETUPVAL                         R4 3
       27 CALL                             R4 0 0
       28 GETUPVAL                         R4 0
       29 MOVE                             R5 R0
       30 LOADK                            R7 K5 ["add-%*"]
       31 MOVE                             R9 R1
       32 NAMECALL                         R7 R7 K1 ["format"]
       34 CALL                             R7 2 1
       35 MOVE                             R6 R7
       36 CALL                             R4 2 1
       37 LOADK                            R8 K6 ["Add action button for context '%*' not found"]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K1 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K4 [assert]
       48 CALL                             R5 2 0
       49 GETUPVAL                         R5 1
       50 NEWCLOSURE                       R6 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R4
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 3
       55 CALL                             R5 0 0
       56 GETUPVAL                         R5 0
       57 MOVE                             R6 R0
       58 LOADK                            R7 K7 ["rename-InputAction--internal-text-input--textbox"]
       59 CALL                             R5 2 1
       60 FASTCALL2K                       ASSERT R5 K8 ; [+5]
       62 MOVE                             R7 R5
       63 LOADK                            R8 K8 ["Active text box not found"]
       64 GETIMPORT                        R6 K4 [assert]
       66 CALL                             R6 2 0
       67 GETUPVAL                         R6 1
       68 NEWCLOSURE                       R7 P2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CALL                             R6 1 0
       72 GETUPVAL                         R6 3
       73 CALL                             R6 0 0
       74 GETUPVAL                         R6 1
       75 NEWCLOSURE                       R7 P3
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R0
       79 CALL                             R6 1 0
       80 GETUPVAL                         R6 3
       81 CALL                             R6 0 0
       82 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Packages"]
       18 GETTABLEKS                       R4 R5 K8 ["Dev"]
       20 GETTABLEKS                       R3 R4 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K10 ["Parent"]
       29 GETTABLEKS                       R4 R5 K11 ["TestHelper"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K12 ["awaitDeferAsync"]
       34 GETTABLEKS                       R5 R2 K13 ["act"]
       36 GETTABLEKS                       R6 R2 K14 ["queryByTestId"]
       38 GETTABLEKS                       R7 R2 K15 ["queryByText"]
       40 GETTABLEKS                       R8 R2 K16 ["fireEvent"]
       42 NEWTABLE                         R9 8 0
       44 DUPCLOSURE                       R10 K17 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R10 R9 K18 ["Expand"]
       51 DUPCLOSURE                       R10 K19 [PROTO_2]
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R10 R9 K20 ["Collapse"]
       55 DUPCLOSURE                       R10 K21 [PROTO_3]
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R10 R9 K22 ["ItemExists"]
       59 DUPCLOSURE                       R10 K23 [PROTO_4]
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R10 R9 K24 ["ItemsExist"]
       63 DUPCLOSURE                       R10 K25 [PROTO_7]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R10 R9 K26 ["Rename"]
       70 DUPCLOSURE                       R10 K27 [PROTO_12]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R10 R9 K28 ["CreateContext"]
       77 DUPCLOSURE                       R10 K29 [PROTO_17]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R10 R9 K30 ["CreateAction"]
       84 RETURN                           R9 1
