PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["currentText"]
        5 JUMPIFEQ                         R0 R2 ; [+27]
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K5 [{["currentText"], ["showDropdown"] = True, ["extraDetails"]}]
        9 SETTABLEKS                       R0 R4 K1 ["currentText"]
       11 MOVE                             R5 R1
       12 JUMPIF                           R5 ; [+3]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K6 ["None"]
       16 SETTABLEKS                       R5 R4 K4 ["extraDetails"]
       18 NAMECALL                         R2 R2 K7 ["setState"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["props"]
       24 GETTABLEKS                       R2 R2 K9 ["updateSearch"]
       26 MOVE                             R3 R0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["state"]
       30 GETTABLEKS                       R4 R4 K4 ["extraDetails"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["onTextChanged"]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R0
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 DUPTABLE                         R4 K3 [{"extraDetails"}]
       10 SETTABLEKS                       R0 R4 K2 ["extraDetails"]
       12 NAMECALL                         R2 R2 K4 ["setState"]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K5 ["props"]
       18 GETTABLEKS                       R2 R2 K6 ["OnSelectItem"]
       20 JUMPIFNOT                        R2 ; [+7]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K5 ["props"]
       24 GETTABLEKS                       R2 R2 K6 ["OnSelectItem"]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = ""}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["currentText"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+11]
        4 GETTABLEKS                       R1 R0 K2 ["showDropdown"]
        6 JUMPIF                           R1 ; [+7]
        7 GETIMPORT                        R1 K4 [next]
        9 GETTABLEKS                       R2 R0 K5 ["extraDetails"]
       11 CALL                             R1 1 1
       12 JUMPIFEQKNIL                     R1 ; [+7]
       14 DUPTABLE                         R1 K7 [{[1] = "", ["extraDetails"], ["showDropdown"] = False}]
       15 NEWTABLE                         R2 0 0
       17 SETTABLEKS                       R2 R1 K5 ["extraDetails"]
       19 RETURN                           R1 1
       20 LOADNIL                          R1
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K4 [{[1], ["showDropdown"] = False, ["extraDetails"]}]
        1 GETTABLEKS                       R4 R1 K6 ["searchTerm"]
        3 ORK                              R3 R4 K5 [""]
        4 SETTABLEKS                       R3 R2 K0 ["currentText"]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K3 ["extraDetails"]
       10 SETTABLEKS                       R2 R0 K7 ["state"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K8 ["createRef"]
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R0 K9 ["frameRef"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R2 R0 K10 ["onTextChanged"]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K11 ["onDropdownClicked"]
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R0 K12 ["onDeleteTag"]
       31 NEWCLOSURE                       R2 P3
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K13 ["closeDropdown"]
       35 GETUPVAL                         R3 1
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+3]
       38 NEWCLOSURE                       R2 P4
       39 CAPTURE                          VAL R0
       40 JUMP                             ; [+1]
       41 DUPCLOSURE                       R2 K14 [PROTO_6]
       42 SETTABLEKS                       R2 R0 K15 ["resetSearchBar"]
       44 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["searchTerm"]
        7 JUMPIFNOTEQKS                    R1 K2 [""] ; [+4]
        9 GETTABLEKS                       R1 R0 K3 ["resetSearchBar"]
       11 CALL                             R1 0 0
       12 GETTABLEKS                       R1 R0 K4 ["state"]
       14 GETTABLEKS                       R1 R1 K5 ["currentText"]
       16 GETTABLEKS                       R2 R0 K0 ["props"]
       18 GETTABLEKS                       R2 R2 K1 ["searchTerm"]
       20 JUMPIFEQ                         R2 R1 ; [+11]
       22 GETTABLEKS                       R2 R0 K0 ["props"]
       24 GETTABLEKS                       R2 R2 K6 ["updateSearch"]
       26 MOVE                             R3 R1
       27 GETTABLEKS                       R4 R0 K4 ["state"]
       29 GETTABLEKS                       R4 R4 K7 ["extraDetails"]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["width"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["searchTerm"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["LayoutOrder"]
       12 GETTABLEKS                       R4 R0 K4 ["state"]
       14 GETTABLEKS                       R4 R4 K5 ["currentText"]
       16 GETTABLEKS                       R5 R0 K4 ["state"]
       18 GETTABLEKS                       R5 R5 K6 ["showDropdown"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K7 ["results"]
       24 GETTABLEKS                       R7 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R7 K8 ["defaultTextKey"]
       28 GETTABLEKS                       R8 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R8 K9 ["GetKey"]
       32 GETTABLEKS                       R9 R0 K10 ["frameRef"]
       34 JUMPIFNOT                        R9 ; [+4]
       35 GETTABLEKS                       R9 R0 K10 ["frameRef"]
       37 GETTABLEKS                       R9 R9 K11 ["current"]
       39 LOADNIL                          R10
       40 JUMPIFNOT                        R9 ; [+16]
       41 GETIMPORT                        R11 K14 [UDim2.new]
       43 LOADN                            R12 0
       44 GETTABLEKS                       R13 R9 K15 ["AbsolutePosition"]
       46 GETTABLEKS                       R13 R13 K16 ["X"]
       48 LOADN                            R14 0
       49 GETTABLEKS                       R16 R9 K15 ["AbsolutePosition"]
       51 GETTABLEKS                       R16 R16 K18 ["Y"]
       53 ADDK                             R15 R16 K17 [26]
       54 CALL                             R11 4 1
       55 MOVE                             R10 R11
       56 JUMP                             ; [+4]
       57 GETIMPORT                        R11 K14 [UDim2.new]
       59 CALL                             R11 0 1
       60 MOVE                             R10 R11
       61 MOVE                             R11 R5
       62 JUMPIFNOT                        R11 ; [+9]
       63 LOADB                            R11 0
       64 JUMPIFNOTEQ                      R2 R4 ; [+7]
       66 LENGTH                           R12 R4
       67 LOADN                            R13 3
       68 JUMPIFLE                         R13 R12 ; [+2]
       70 LOADB                            R11 0 +1
       71 LOADB                            R11 1
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K19 ["createElement"]
       75 LOADK                            R13 K20 ["Frame"]
       76 NEWTABLE                         R14 4 0
       78 LOADN                            R15 1
       79 SETTABLEKS                       R15 R14 K21 ["BackgroundTransparency"]
       81 SETTABLEKS                       R3 R14 K3 ["LayoutOrder"]
       83 GETIMPORT                        R15 K14 [UDim2.new]
       85 LOADN                            R16 1
       86 LOADN                            R17 0
       87 LOADN                            R18 0
       88 LOADN                            R19 25
       89 CALL                             R15 4 1
       90 SETTABLEKS                       R15 R14 K22 ["Size"]
       92 GETUPVAL                         R15 0
       93 GETTABLEKS                       R15 R15 K23 ["Ref"]
       95 GETTABLEKS                       R16 R0 K10 ["frameRef"]
       97 SETTABLE                         R16 R14 R15
       98 DUPTABLE                         R15 K26 [{"SearchBar", "Dropdown"}]
       99 GETUPVAL                         R16 0
      100 GETTABLEKS                       R16 R16 K19 ["createElement"]
      102 GETUPVAL                         R17 1
      103 DUPTABLE                         R18 K32 [{["width"], ["onTextChanged"], ["onSearchRequested"], ["defaultTextKey"], ["searchTerm"], ["onDeleteTag"], ["IsLive"] = True}]
      104 SETTABLEKS                       R1 R18 K1 ["width"]
      106 GETTABLEKS                       R19 R0 K27 ["onTextChanged"]
      108 SETTABLEKS                       R19 R18 K27 ["onTextChanged"]
      110 GETTABLEKS                       R19 R0 K27 ["onTextChanged"]
      112 SETTABLEKS                       R19 R18 K28 ["onSearchRequested"]
      114 SETTABLEKS                       R7 R18 K8 ["defaultTextKey"]
      116 SETTABLEKS                       R4 R18 K2 ["searchTerm"]
      118 GETTABLEKS                       R19 R0 K29 ["onDeleteTag"]
      120 SETTABLEKS                       R19 R18 K29 ["onDeleteTag"]
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K24 ["SearchBar"]
      125 MOVE                             R16 R11
      126 JUMPIFNOT                        R16 ; [+31]
      127 GETUPVAL                         R16 0
      128 GETTABLEKS                       R16 R16 K19 ["createElement"]
      130 GETUPVAL                         R17 2
      131 DUPTABLE                         R18 K38 [{"Size", "Position", "Items", "GetKey", "SearchTerm", "onItemClicked", "closeDropdown"}]
      132 GETIMPORT                        R19 K14 [UDim2.new]
      134 LOADN                            R20 0
      135 MOVE                             R21 R1
      136 LOADN                            R22 0
      137 LOADN                            R23 0
      138 CALL                             R19 4 1
      139 SETTABLEKS                       R19 R18 K22 ["Size"]
      141 SETTABLEKS                       R10 R18 K33 ["Position"]
      143 SETTABLEKS                       R6 R18 K34 ["Items"]
      145 SETTABLEKS                       R8 R18 K9 ["GetKey"]
      147 SETTABLEKS                       R4 R18 K35 ["SearchTerm"]
      149 GETTABLEKS                       R19 R0 K39 ["onDropdownClicked"]
      151 SETTABLEKS                       R19 R18 K36 ["onItemClicked"]
      153 GETTABLEKS                       R19 R0 K37 ["closeDropdown"]
      155 SETTABLEKS                       R19 R18 K37 ["closeDropdown"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K25 ["Dropdown"]
      160 CALL                             R12 3 -1
      161 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Components"]
       24 GETTABLEKS                       R4 R4 K9 ["SearchBar"]
       26 GETTABLEKS                       R4 R4 K9 ["SearchBar"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K7 ["Src"]
       33 GETTABLEKS                       R5 R5 K8 ["Components"]
       35 GETTABLEKS                       R5 R5 K10 ["SearchOptions"]
       37 GETTABLEKS                       R5 R5 K11 ["LiveSearchDropdown"]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R5 R2 K12 ["PureComponent"]
       42 LOADK                            R7 K13 ["LiveSearchBar"]
       43 NAMECALL                         R5 R5 K14 ["extend"]
       45 CALL                             R5 2 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K7 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["SharedFlags"]
       54 GETTABLEKS                       R7 R7 K17 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K18 [PROTO_7]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R7 R5 K19 ["init"]
       62 DUPCLOSURE                       R7 K20 [PROTO_8]
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R7 R5 K21 ["didUpdate"]
       66 DUPCLOSURE                       R7 K22 [PROTO_9]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R7 R5 K23 ["render"]
       72 RETURN                           R5 1
