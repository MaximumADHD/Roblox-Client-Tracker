PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 GETTABLEKS                       R0 R0 K2 ["setSelectionStart"]
       15 LOADN                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemType"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AssetType"]
        6 GETTABLEKS                       R1 R1 K2 ["Folder"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+22]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["ItemType"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["AssetType"]
        8 GETTABLEKS                       R1 R1 K2 ["Folder"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+13]
       12 LOADK                            R0 K3 ["Folder names cannot contain <b>%*</b> or end with a period."]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K4 ["Utils"]
       16 GETTABLEKS                       R2 R2 K5 ["escapeRichText"]
       18 LOADK                            R3 K6 ["< > : \" / \\ | ? *"]
       19 CALL                             R2 1 1
       20 NAMECALL                         R0 R0 K7 ["format"]
       22 CALL                             R0 2 1
       23 RETURN                           R0 1
       24 LOADNIL                          R0
       25 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnComplete"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["OnComplete"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 CALL                             R1 3 0
       11 RETURN                           R0 0
       12 MOVE                             R1 R0
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       16 GETIMPORT                        R3 K4 [Enum.KeyCode.Escape]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 JUMPIF                           R1 ; [+2]
       23 GETUPVAL                         R2 1
       24 JUMPIF                           R2 ; [+5]
       25 GETUPVAL                         R2 3
       26 NAMECALL                         R2 R2 K5 ["removeStagedItem"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K6 ["ItemType"]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K7 ["AssetType"]
       36 GETTABLEKS                       R3 R3 K8 ["Folder"]
       38 JUMPIFNOTEQ                      R2 R3 ; [+10]
       40 GETUPVAL                         R2 3
       41 GETUPVAL                         R4 2
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K9 ["ItemPath"]
       45 NAMECALL                         R2 R2 K10 ["uploadStagedFolderPath"]
       47 CALL                             R2 3 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K6 ["ItemType"]
       52 GETUPVAL                         R3 4
       53 GETTABLEKS                       R3 R3 K7 ["AssetType"]
       55 GETTABLEKS                       R3 R3 K11 ["Place"]
       57 JUMPIFNOTEQ                      R2 R3 ; [+14]
       59 GETUPVAL                         R2 5
       60 GETUPVAL                         R3 2
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K9 ["ItemPath"]
       64 DUPTABLE                         R5 K14 [{"ItemsController", "Networking"}]
       65 GETUPVAL                         R6 3
       66 SETTABLEKS                       R6 R5 K12 ["ItemsController"]
       68 GETUPVAL                         R6 6
       69 SETTABLEKS                       R6 R5 K13 ["Networking"]
       71 CALL                             R2 3 0
       72 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useRef"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["useState"]
       16 GETTABLEKS                       R5 R0 K3 ["InitialText"]
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K4 ["Hooks"]
       22 GETTABLEKS                       R6 R6 K5 ["useTokens"]
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R9 0 0
       32 CALL                             R7 2 0
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 2
       43 MOVE                             R10 R4
       44 GETTABLEKS                       R11 R0 K8 ["ItemType"]
       46 SETLIST                          R9 R10 2 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       52 NEWCLOSURE                       R9 P2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U6
       57 NEWTABLE                         R10 0 2
       59 MOVE                             R11 R7
       60 GETTABLEKS                       R12 R0 K8 ["ItemType"]
       62 SETLIST                          R10 R11 2 [1]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R2
       76 NEWTABLE                         R11 0 5
       78 MOVE                             R12 R4
       79 MOVE                             R13 R7
       80 GETTABLEKS                       R14 R0 K3 ["InitialText"]
       82 GETTABLEKS                       R15 R0 K10 ["ItemPath"]
       84 GETTABLEKS                       R16 R0 K8 ["ItemType"]
       86 SETLIST                          R11 R12 5 [1]
       88 CALL                             R9 2 1
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R10 R10 K11 ["createElement"]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R11 R11 K12 ["Popover"]
       95 GETTABLEKS                       R11 R11 K13 ["Root"]
       97 DUPTABLE                         R12 K16 [{"LayoutOrder", "isOpen"}]
       98 GETTABLEKS                       R13 R0 K14 ["LayoutOrder"]
      100 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      102 NOT                              R13 R7
      103 SETTABLEKS                       R13 R12 K15 ["isOpen"]
      105 DUPTABLE                         R13 K19 [{"Anchor", "Content"}]
      106 GETUPVAL                         R14 2
      107 GETTABLEKS                       R14 R14 K11 ["createElement"]
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R15 R15 K12 ["Popover"]
      112 GETTABLEKS                       R15 R15 K17 ["Anchor"]
      114 DUPTABLE                         R16 K20 [{"LayoutOrder"}]
      115 GETTABLEKS                       R17 R0 K14 ["LayoutOrder"]
      117 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      119 DUPTABLE                         R17 K22 [{"InputContainer"}]
      120 GETUPVAL                         R18 2
      121 GETTABLEKS                       R18 R18 K11 ["createElement"]
      123 GETUPVAL                         R19 3
      124 GETTABLEKS                       R19 R19 K23 ["View"]
      126 DUPTABLE                         R20 K27 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-y padding-left-xsmall padding-right-small gui-object-defaults"}]
      127 GETTABLEKS                       R21 R0 K14 ["LayoutOrder"]
      129 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      131 GETIMPORT                        R21 K30 [UDim2.new]
      133 GETTABLEKS                       R22 R0 K24 ["Size"]
      135 GETTABLEKS                       R22 R22 K31 ["X"]
      137 GETTABLEKS                       R22 R22 K32 ["Scale"]
      139 GETTABLEKS                       R23 R0 K24 ["Size"]
      141 GETTABLEKS                       R23 R23 K31 ["X"]
      143 GETTABLEKS                       R23 R23 K33 ["Offset"]
      145 LOADN                            R24 0
      146 LOADN                            R25 0
      147 CALL                             R21 4 1
      148 SETTABLEKS                       R21 R20 K24 ["Size"]
      150 DUPTABLE                         R21 K35 [{"Input"}]
      151 GETUPVAL                         R22 2
      152 GETTABLEKS                       R22 R22 K11 ["createElement"]
      154 GETUPVAL                         R23 3
      155 GETTABLEKS                       R23 R23 K36 ["TextInput"]
      157 DUPTABLE                         R24 K46 [{["LayoutOrder"], ["text"], ["label"] = "", ["onChanged"], ["textBoxRef"], ["onFocusLost"], ["size"], ["width"], ["hasError"]}]
      158 GETTABLEKS                       R25 R0 K14 ["LayoutOrder"]
      160 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      162 SETTABLEKS                       R4 R24 K37 ["text"]
      164 SETTABLEKS                       R5 R24 K40 ["onChanged"]
      166 SETTABLEKS                       R3 R24 K41 ["textBoxRef"]
      168 SETTABLEKS                       R9 R24 K42 ["onFocusLost"]
      170 GETUPVAL                         R25 3
      171 GETTABLEKS                       R25 R25 K47 ["Enums"]
      173 GETTABLEKS                       R25 R25 K48 ["InputSize"]
      175 GETTABLEKS                       R25 R25 K49 ["XSmall"]
      177 SETTABLEKS                       R25 R24 K43 ["size"]
      179 GETIMPORT                        R25 K51 [UDim.new]
      181 LOADN                            R26 1
      182 LOADN                            R27 0
      183 CALL                             R25 2 1
      184 SETTABLEKS                       R25 R24 K44 ["width"]
      186 NOT                              R25 R7
      187 SETTABLEKS                       R25 R24 K45 ["hasError"]
      189 CALL                             R22 2 1
      190 SETTABLEKS                       R22 R21 K34 ["Input"]
      192 CALL                             R18 3 1
      193 SETTABLEKS                       R18 R17 K21 ["InputContainer"]
      195 CALL                             R14 3 1
      196 SETTABLEKS                       R14 R13 K17 ["Anchor"]
      198 NOT                              R14 R7
      199 JUMPIFNOT                        R14 ; [+49]
      200 GETUPVAL                         R14 2
      201 GETTABLEKS                       R14 R14 K11 ["createElement"]
      203 GETUPVAL                         R15 3
      204 GETTABLEKS                       R15 R15 K12 ["Popover"]
      206 GETTABLEKS                       R15 R15 K18 ["Content"]
      208 DUPTABLE                         R16 K57 [{["align"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      209 GETUPVAL                         R17 3
      210 GETTABLEKS                       R17 R17 K47 ["Enums"]
      212 GETTABLEKS                       R17 R17 K58 ["PopoverAlign"]
      214 GETTABLEKS                       R17 R17 K59 ["Start"]
      216 SETTABLEKS                       R17 R16 K52 ["align"]
      218 GETUPVAL                         R17 3
      219 GETTABLEKS                       R17 R17 K47 ["Enums"]
      221 GETTABLEKS                       R17 R17 K60 ["Radius"]
      223 GETTABLEKS                       R17 R17 K61 ["Small"]
      225 SETTABLEKS                       R17 R16 K53 ["radius"]
      227 GETTABLEKS                       R17 R6 K62 ["Inverse"]
      229 GETTABLEKS                       R17 R17 K63 ["Surface"]
      231 GETTABLEKS                       R17 R17 K64 ["Surface_0"]
      233 SETTABLEKS                       R17 R16 K54 ["backgroundStyle"]
      235 DUPTABLE                         R17 K66 [{"HelperText"}]
      236 GETUPVAL                         R18 2
      237 GETTABLEKS                       R18 R18 K11 ["createElement"]
      239 GETUPVAL                         R19 3
      240 GETTABLEKS                       R19 R19 K67 ["Text"]
      242 DUPTABLE                         R20 K73 [{["Text"], ["RichText"] = True, ["tag"] = "size-0 auto-xy padding-xsmall text-body-small text-wrap text-align-x-left content-inverse-default", ["testId"] = "edit-name-input-helper-text"}]
      243 SETTABLEKS                       R8 R20 K67 ["Text"]
      245 CALL                             R18 2 1
      246 SETTABLEKS                       R18 R17 K65 ["HelperText"]
      248 CALL                             R14 3 1
      249 SETTABLEKS                       R14 R13 K18 ["Content"]
      251 CALL                             R10 3 -1
      252 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       41 GETTABLEKS                       R6 R6 K13 ["ItemsController"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Networking"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Util"]
       57 GETTABLEKS                       R8 R8 K16 ["PlaceManagement"]
       59 GETTABLEKS                       R8 R8 K17 ["renamePlace"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Src"]
       66 GETTABLEKS                       R9 R9 K15 ["Util"]
       68 GETTABLEKS                       R9 R9 K18 ["validateFolderName"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K19 [PROTO_4]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 RETURN                           R9 1
