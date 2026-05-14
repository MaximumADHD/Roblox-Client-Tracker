PROTO_0:
        0 JUMPIFNOT                        R0 ; [+27]
        1 JUMPIFNOT                        R1 ; [+26]
        2 LENGTH                           R2 R1
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+23]
        6 GETIMPORT                        R2 K2 [table.remove]
        8 MOVE                             R3 R1
        9 LOADN                            R4 1
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+14]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+7]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["findDeepInstance"]
       20 MOVE                             R5 R3
       21 MOVE                             R6 R1
       22 CALL                             R4 2 1
       23 RETURN                           R4 1
       24 LOADNIL                          R4
       25 RETURN                           R4 1
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findDeepInstance"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 5
        6 LOADK                            R4 K1 ["MainSplitPane"]
        7 LOADK                            R5 K2 ["Contents"]
        8 LOADK                            R6 K3 ["Pane 2"]
        9 LOADK                            R7 K4 ["Child"]
       10 LOADK                            R8 K5 ["LayerData"]
       11 SETLIST                          R3 R4 5 [1]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findDeepInstance"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 4
        6 LOADK                            R4 K1 ["MainSplitPane"]
        7 LOADK                            R5 K2 ["Contents"]
        8 LOADK                            R6 K3 ["Pane 1"]
        9 LOADK                            R7 K4 ["Child"]
       10 SETLIST                          R3 R4 4 [1]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ShowLayerID"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 ADDK                             R1 R1 K1 [1]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["findDeepInstance"]
        8 MOVE                             R3 R0
        9 NEWTABLE                         R4 0 4
       11 LOADK                            R5 K3 ["Contents"]
       12 LOADK                            R6 K4 ["List"]
       13 LOADK                            R7 K5 ["Child"]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R9 R1
       16 GETIMPORT                        R8 K7 [tostring]
       18 CALL                             R8 1 1
       19 SETLIST                          R4 R5 4 [1]
       21 CALL                             R2 2 1
       22 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getLayerViewItem"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["findDeepInstance"]
        9 MOVE                             R4 R2
       10 NEWTABLE                         R5 0 3
       12 LOADK                            R6 K2 ["1"]
       13 LOADK                            R7 K3 ["Left"]
       14 LOADK                            R8 K4 ["Text"]
       15 SETLIST                          R5 R6 3 [1]
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getLayerViewItem"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["findDeepInstance"]
        9 MOVE                             R4 R2
       10 NEWTABLE                         R5 0 3
       12 LOADK                            R6 K2 ["2"]
       13 LOADK                            R7 K3 ["Left"]
       14 LOADK                            R8 K4 ["Text"]
       15 SETLIST                          R5 R6 3 [1]
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getLayerViewItem"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["findDeepInstance"]
        9 MOVE                             R4 R2
       10 NEWTABLE                         R5 0 8
       12 LOADK                            R6 K2 ["2"]
       13 LOADK                            R7 K3 ["Left"]
       14 LOADK                            R8 K4 ["Text"]
       15 LOADK                            R9 K5 ["PropertyCell"]
       16 LOADK                            R10 K6 ["Content"]
       17 LOADK                            R11 K7 ["TextInput"]
       18 LOADK                            R12 K8 ["Contents"]
       19 LOADK                            R13 K9 ["TextBox"]
       20 SETLIST                          R5 R6 8 [1]
       22 CALL                             R3 2 1
       23 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getLayerViewItem"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["findDeepInstance"]
        9 MOVE                             R4 R2
       10 NEWTABLE                         R5 0 6
       12 LOADK                            R6 K2 ["2"]
       13 LOADK                            R7 K3 ["Left"]
       14 LOADK                            R8 K4 ["Text"]
       15 LOADK                            R9 K5 ["Content"]
       16 LOADK                            R10 K6 ["Contents"]
       17 LOADK                            R11 K7 ["TextButton"]
       18 SETLIST                          R5 R6 6 [1]
       20 CALL                             R3 2 1
       21 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getLayerViewItem"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["findDeepInstance"]
        9 MOVE                             R4 R2
       10 NEWTABLE                         R5 0 3
       12 LOADK                            R6 K2 ["2"]
       13 LOADK                            R7 K3 ["Right"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K4 ["LAYERVIEW_ACTIONS"]
       17 GETTABLEKS                       R8 R8 K5 ["Clear"]
       19 SETLIST                          R5 R6 3 [1]
       21 CALL                             R3 2 1
       22 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getLayerViewItem"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["findDeepInstance"]
        9 MOVE                             R4 R2
       10 NEWTABLE                         R5 0 3
       12 LOADK                            R6 K2 ["2"]
       13 LOADK                            R7 K3 ["Right"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K4 ["LAYERVIEW_ACTIONS"]
       17 GETTABLEKS                       R8 R8 K5 ["History"]
       19 SETLIST                          R5 R6 3 [1]
       21 CALL                             R3 2 1
       22 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findDeepInstance"]
        3 MOVE                             R3 R0
        4 NEWTABLE                         R4 0 2
        6 LOADK                            R5 K1 ["List"]
        7 LOADK                            R7 K2 ["Cell_%*"]
        8 MOVE                             R9 R1
        9 NAMECALL                         R7 R7 K3 ["format"]
       11 CALL                             R7 2 1
       12 MOVE                             R6 R7
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findDeepInstance"]
        3 MOVE                             R3 R0
        4 NEWTABLE                         R4 0 2
        6 LOADK                            R5 K1 ["Tabs"]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R7 R1
        9 GETIMPORT                        R6 K3 [tostring]
       11 CALL                             R6 1 1
       12 SETLIST                          R4 R5 2 [1]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["new"]
        3 LOADN                            R6 60
        4 CALL                             R5 1 1
        5 LOADN                            R8 1
        6 MOVE                             R6 R3
        7 LOADN                            R7 1
        8 FORNPREP                         R6
        9 DUPTABLE                         R9 K3 [{"layerMap", "timestamp"}]
       10 NEWTABLE                         R10 1 0
       12 NEWTABLE                         R11 1 0
       14 DUPTABLE                         R12 K7 [{"number", "vector2", "vector3"}]
       15 GETIMPORT                        R13 K10 [math.random]
       17 CALL                             R13 0 1
       18 SETTABLEKS                       R13 R12 K4 ["number"]
       20 GETIMPORT                        R13 K12 [Vector2.new]
       22 GETIMPORT                        R14 K10 [math.random]
       24 CALL                             R14 0 1
       25 GETIMPORT                        R15 K10 [math.random]
       27 CALL                             R15 0 -1
       28 CALL                             R13 -1 1
       29 SETTABLEKS                       R13 R12 K5 ["vector2"]
       31 GETIMPORT                        R14 K10 [math.random]
       33 CALL                             R14 0 1
       34 GETIMPORT                        R15 K10 [math.random]
       36 CALL                             R15 0 1
       37 GETIMPORT                        R16 K10 [math.random]
       39 CALL                             R16 0 -1
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R13 K14 [Vector3.new]
       43 CALL                             R13 -1 1
       44 SETTABLEKS                       R13 R12 K6 ["vector3"]
       46 SETTABLE                         R12 R11 R1
       47 SETTABLE                         R11 R10 R0
       48 SETTABLEKS                       R10 R9 K1 ["layerMap"]
       50 SUBK                             R11 R8 K16 [1]
       51 MULK                             R10 R11 K15 [0.1]
       52 SETTABLEKS                       R10 R9 K2 ["timestamp"]
       54 GETTABLEKS                       R13 R9 K1 ["layerMap"]
       56 GETTABLE                         R12 R13 R0
       57 GETTABLE                         R11 R12 R1
       58 GETTABLE                         R10 R11 R2
       59 JUMPIFNOTEQKNIL                  R10 ; [+49]
       61 JUMPIFNOTEQKS                    R4 K4 ["number"] ; [+10]
       63 GETTABLEKS                       R12 R9 K1 ["layerMap"]
       65 GETTABLE                         R11 R12 R0
       66 GETTABLE                         R10 R11 R1
       67 GETIMPORT                        R11 K10 [math.random]
       69 CALL                             R11 0 1
       70 SETTABLE                         R11 R10 R2
       71 JUMP                             ; [+37]
       72 JUMPIFNOTEQKS                    R4 K11 ["Vector2"] ; [+16]
       74 GETTABLEKS                       R12 R9 K1 ["layerMap"]
       76 GETTABLE                         R11 R12 R0
       77 GETTABLE                         R10 R11 R1
       78 GETIMPORT                        R11 K12 [Vector2.new]
       80 GETIMPORT                        R12 K10 [math.random]
       82 CALL                             R12 0 1
       83 GETIMPORT                        R13 K10 [math.random]
       85 CALL                             R13 0 -1
       86 CALL                             R11 -1 1
       87 SETTABLE                         R11 R10 R2
       88 JUMP                             ; [+20]
       89 JUMPIFNOTEQKS                    R4 K13 ["Vector3"] ; [+19]
       91 GETTABLEKS                       R12 R9 K1 ["layerMap"]
       93 GETTABLE                         R11 R12 R0
       94 GETTABLE                         R10 R11 R1
       95 GETIMPORT                        R12 K10 [math.random]
       97 CALL                             R12 0 1
       98 GETIMPORT                        R13 K10 [math.random]
      100 CALL                             R13 0 1
      101 GETIMPORT                        R14 K10 [math.random]
      103 CALL                             R14 0 -1
      104 FASTCALL                         VECTOR ; [+2]
      105 GETIMPORT                        R11 K14 [Vector3.new]
      107 CALL                             R11 -1 1
      108 SETTABLE                         R11 R10 R2
      109 MOVE                             R12 R9
      110 NAMECALL                         R10 R5 K17 ["push"]
      112 CALL                             R10 2 0
      113 FORNLOOP                         R6
      114 RETURN                           R5 1

PROTO_13:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 MOVE                             R10 R4
        6 CALL                             R5 5 1
        7 DUPTABLE                         R6 K2 [{"FrameBuffer", "HistoryField"}]
        8 SETTABLEKS                       R5 R6 K0 ["FrameBuffer"]
       10 DUPTABLE                         R7 K6 [{"id", "section", "field"}]
       11 SETTABLEKS                       R0 R7 K3 ["id"]
       13 SETTABLEKS                       R1 R7 K4 ["section"]
       15 SETTABLEKS                       R2 R7 K5 ["field"]
       17 SETTABLEKS                       R7 R6 K1 ["HistoryField"]
       19 RETURN                           R6 1

PROTO_14:
        0 LOADN                            R2 1
        1 GETUPVAL                         R3 0
        2 ORK                              R0 R3 K0 [1]
        3 LOADN                            R1 1
        4 FORNPREP                         R0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["fireEvent"]
        8 GETTABLEKS                       R3 R3 K2 ["click"]
       10 GETUPVAL                         R4 2
       11 CALL                             R3 1 0
       12 FORNLOOP                         R0
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 2
        2 NAMECALL                         R0 R0 K0 ["click"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K4 [Enum.KeyCode.Delete]
        8 NAMECALL                         R0 R0 K5 ["sendKey"]
       10 CALL                             R0 2 0
       11 GETIMPORT                        R0 K8 [task.wait]
       13 LOADK                            R1 K9 [0.1]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Element"]
        3 GETTABLEKS                       R1 R1 K1 ["new"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["act"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["sendText"]
        4 CALL                             R0 2 0
        5 GETIMPORT                        R0 K3 [task.wait]
        7 LOADK                            R1 K4 [0.1]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R2 K8 [Enum.KeyCode.Return]
       12 NAMECALL                         R0 R0 K9 ["sendKey"]
       14 CALL                             R0 2 0
       15 GETIMPORT                        R0 K3 [task.wait]
       17 LOADK                            R1 K4 [0.1]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Element"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["act"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 GETTABLEKS                       R0 R0 K2 ["mouseLeftDown"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
       12 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       14 GETTABLEKS                       R0 R0 K3 ["mouseDrag"]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 2
       19 ADD                              R2 R3 R4
       20 LOADN                            R3 5
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["VirtualInput"]
       25 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       27 GETTABLEKS                       R0 R0 K4 ["mouseLeftUp"]
       29 GETUPVAL                         R1 1
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Element"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 NAMECALL                         R3 R2 K2 ["getCenter"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["act"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R1
       17 CALL                             R4 1 0
       18 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getLayerViewItem"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["findDeepInstance"]
        9 MOVE                             R5 R3
       10 NEWTABLE                         R6 0 3
       12 FASTCALL1                        TOSTRING R2 ; [+3]
       13 MOVE                             R8 R2
       14 GETIMPORT                        R7 K3 [tostring]
       16 CALL                             R7 1 1
       17 LOADK                            R8 K4 ["Left"]
       18 LOADK                            R9 K5 ["Text"]
       19 SETLIST                          R6 R7 3 [1]
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETTABLEKS                       R5 R4 K5 ["Text"]
       25 RETURN                           R5 1
       26 LOADNIL                          R5
       27 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getLayerViewLabel"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 FASTCALL1                        ASSERT R4 ; [+3]
        7 MOVE                             R6 R4
        8 GETIMPORT                        R5 K2 [assert]
       10 CALL                             R5 1 0
       11 GETTABLEKS                       R5 R4 K3 ["Text"]
       13 JUMPIFEQ                         R5 R2 ; [+3]
       15 LOADB                            R5 0
       16 RETURN                           R5 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["getLayerViewValue"]
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R3 ; [+12]
       24 FASTCALL1                        ASSERT R5 ; [+3]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K2 [assert]
       28 CALL                             R6 1 0
       29 GETTABLEKS                       R7 R5 K3 ["Text"]
       31 JUMPIFEQ                         R7 R3 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 RETURN                           R6 1
       36 JUMPIFEQKNIL                     R5 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 RETURN                           R6 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findDeepInstance"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K1 ["Content"]
        7 LOADK                            R5 K2 ["1"]
        8 SETLIST                          R3 R4 2 [1]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+3]
       12 NEWTABLE                         R2 0 0
       14 RETURN                           R2 1
       15 NEWTABLE                         R2 0 0
       17 NAMECALL                         R3 R1 K3 ["GetChildren"]
       19 CALL                             R3 1 3
       20 FORGPREP                         R3
       21 LOADK                            R10 K4 ["ImageButton"]
       22 NAMECALL                         R8 R7 K5 ["IsA"]
       24 CALL                             R8 2 1
       25 JUMPIFNOT                        R8 ; [+3]
       26 GETTABLEKS                       R8 R7 K6 ["Name"]
       28 SETTABLE                         R7 R2 R8
       29 FORGLOOP                         R3 2 ; [-9]
       31 RETURN                           R2 1

PROTO_25:
        0 ORK                              R3 R2 K0 [3]
        1 LOADN                            R6 1
        2 SUBK                             R4 R3 K1 [1]
        3 LOADN                            R5 1
        4 FORNPREP                         R4
        5 GETIMPORT                        R7 K3 [pcall]
        7 MOVE                             R8 R0
        8 CALL                             R7 1 1
        9 JUMPIFNOT                        R7 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R7 K5 [print]
       13 GETIMPORT                        R8 K8 [string.format]
       15 LOADK                            R9 K9 ["WARN: Flaky test [%d/%d]"]
       16 MOVE                             R10 R6
       17 MOVE                             R11 R3
       18 CALL                             R8 3 -1
       19 CALL                             R7 -1 0
       20 JUMPIFNOT                        R1 ; [+2]
       21 MOVE                             R7 R1
       22 CALL                             R7 0 0
       23 FORNLOOP                         R4
       24 MOVE                             R4 R0
       25 CALL                             R4 0 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["ReactRoblox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Dev"]
       29 GETTABLEKS                       R4 R4 K10 ["Rhodium"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R0 K11 ["Src"]
       34 GETTABLEKS                       R4 R4 K12 ["Util"]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R4 K13 ["CircularBuffer"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R4 K14 ["Constants"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R4 K15 ["debugFlags"]
       50 CALL                             R7 1 1
       51 NEWTABLE                         R8 32 0
       53 DUPCLOSURE                       R9 K16 [PROTO_0]
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R9 R8 K17 ["findDeepInstance"]
       57 DUPCLOSURE                       R9 K18 [PROTO_1]
       58 CAPTURE                          VAL R8
       59 SETTABLEKS                       R9 R8 K19 ["getLayerView"]
       61 DUPCLOSURE                       R9 K20 [PROTO_2]
       62 CAPTURE                          VAL R8
       63 SETTABLEKS                       R9 R8 K21 ["getLayerTree"]
       65 DUPCLOSURE                       R9 K22 [PROTO_3]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R9 R8 K23 ["getLayerViewItem"]
       70 DUPCLOSURE                       R9 K24 [PROTO_4]
       71 CAPTURE                          VAL R8
       72 SETTABLEKS                       R9 R8 K25 ["getLayerViewLabel"]
       74 DUPCLOSURE                       R9 K26 [PROTO_5]
       75 CAPTURE                          VAL R8
       76 SETTABLEKS                       R9 R8 K27 ["getLayerViewValue"]
       78 DUPCLOSURE                       R9 K28 [PROTO_6]
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R9 R8 K29 ["getLayerViewTextBox"]
       82 DUPCLOSURE                       R9 K30 [PROTO_7]
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R9 R8 K31 ["getLayerViewCheckBox"]
       86 DUPCLOSURE                       R9 K32 [PROTO_8]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 SETTABLEKS                       R9 R8 K33 ["getLayerViewDeleteButton"]
       91 DUPCLOSURE                       R9 K34 [PROTO_9]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R9 R8 K35 ["getLayerViewHistoryButton"]
       96 DUPCLOSURE                       R9 K36 [PROTO_10]
       97 CAPTURE                          VAL R8
       98 SETTABLEKS                       R9 R8 K37 ["getLayerTreeItem"]
      100 DUPCLOSURE                       R9 K38 [PROTO_11]
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R9 R8 K39 ["getLayerPanelTab"]
      104 DUPCLOSURE                       R9 K40 [PROTO_12]
      105 CAPTURE                          VAL R5
      106 DUPCLOSURE                       R10 K41 [PROTO_13]
      107 CAPTURE                          VAL R9
      108 SETTABLEKS                       R10 R8 K42 ["makeHistoryGraphProperties"]
      110 DUPCLOSURE                       R10 K43 [PROTO_15]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R10 R8 K44 ["clickComponent"]
      115 DUPCLOSURE                       R10 K45 [PROTO_17]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R1
      118 SETTABLEKS                       R10 R8 K46 ["clearText"]
      120 DUPCLOSURE                       R10 K47 [PROTO_19]
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R1
      123 SETTABLEKS                       R10 R8 K48 ["sendText"]
      125 DUPCLOSURE                       R10 K49 [PROTO_21]
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R10 R8 K50 ["dragComponent"]
      130 DUPCLOSURE                       R10 K51 [PROTO_22]
      131 CAPTURE                          VAL R8
      132 SETTABLEKS                       R10 R8 K52 ["getLayerViewCell"]
      134 DUPCLOSURE                       R10 K53 [PROTO_23]
      135 CAPTURE                          VAL R8
      136 SETTABLEKS                       R10 R8 K54 ["checkLayerViewItemLabels"]
      138 DUPCLOSURE                       R10 K55 [PROTO_24]
      139 CAPTURE                          VAL R8
      140 SETTABLEKS                       R10 R8 K56 ["getBlendDots"]
      142 DUPCLOSURE                       R10 K57 [PROTO_25]
      143 SETTABLEKS                       R10 R8 K58 ["repeatFlakyTest"]
      145 RETURN                           R8 1
