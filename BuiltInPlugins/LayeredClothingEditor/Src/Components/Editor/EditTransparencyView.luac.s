PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["LuaMeshEditingModuleContext"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["transparencyFromLCEditorToProperty"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R1 K3 ["setTransparency"]
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["setValue"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["EditingItemContext"]
        6 NAMECALL                         R3 R3 K3 ["getItem"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 GETTABLEKS                       R4 R4 K4 ["LuaMeshEditingModuleContext"]
       13 GETTABLEKS                       R5 R1 K5 ["IsCageSlider"]
       15 GETTABLEKS                       R6 R1 K6 ["Stylizer"]
       17 LOADN                            R7 0
       18 JUMPIFNOT                        R5 ; [+10]
       19 JUMPIFNOT                        R4 ; [+15]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K7 ["transparencyFromPropertyToLCEditor"]
       23 NAMECALL                         R9 R4 K8 ["getTransparency"]
       25 CALL                             R9 1 -1
       26 CALL                             R8 -1 1
       27 MOVE                             R7 R8
       28 JUMP                             ; [+6]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K8 ["getTransparency"]
       32 MOVE                             R9 R3
       33 CALL                             R8 1 1
       34 MOVE                             R7 R8
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K9 ["createElement"]
       38 GETUPVAL                         R9 2
       39 DUPTABLE                         R10 K14 [{"Value", "Height", "LayoutOrder", "Item", "SetValue"}]
       40 SETTABLEKS                       R7 R10 K10 ["Value"]
       42 GETTABLEKS                       R11 R6 K15 ["SliderHeight"]
       44 SETTABLEKS                       R11 R10 K11 ["Height"]
       46 SETTABLEKS                       R2 R10 K1 ["LayoutOrder"]
       48 JUMPIF                           R5 ; [+2]
       49 MOVE                             R11 R3
       50 JUMP                             ; [+1]
       51 LOADNIL                          R11
       52 SETTABLEKS                       R11 R10 K12 ["Item"]
       54 JUMPIFNOT                        R5 ; [+3]
       55 GETTABLEKS                       R11 R0 K16 ["setValue"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R11
       59 SETTABLEKS                       R11 R10 K13 ["SetValue"]
       61 CALL                             R8 2 -1
       62 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["AvatarToolsShared"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["Contexts"]
       27 GETTABLEKS                       R3 R3 K9 ["LuaMeshEditingModuleContext"]
       29 GETTABLEKS                       R4 R2 K10 ["Components"]
       31 GETTABLEKS                       R5 R4 K11 ["TransparencySlider"]
       33 GETTABLEKS                       R6 R2 K12 ["Util"]
       35 GETTABLEKS                       R6 R6 K13 ["AccessoryAndBodyToolShared"]
       37 GETTABLEKS                       R7 R6 K14 ["TransparencyUtil"]
       39 GETTABLEKS                       R8 R6 K15 ["ItemCharacteristics"]
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R0 K16 ["Src"]
       45 GETTABLEKS                       R10 R10 K17 ["Thunks"]
       47 GETTABLEKS                       R10 R10 K18 ["ChangeCageTransparency"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R2 K8 ["Contexts"]
       52 GETTABLEKS                       R10 R10 K19 ["EditingItemContext"]
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R12 R0 K5 ["Packages"]
       58 GETTABLEKS                       R12 R12 K20 ["Framework"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R11 K21 ["ContextServices"]
       63 GETTABLEKS                       R13 R12 K22 ["withContext"]
       65 GETTABLEKS                       R14 R11 K23 ["UI"]
       67 GETTABLEKS                       R15 R14 K24 ["Pane"]
       69 GETIMPORT                        R16 K4 [require]
       71 GETTABLEKS                       R17 R0 K16 ["Src"]
       73 GETTABLEKS                       R17 R17 K12 ["Util"]
       75 GETTABLEKS                       R17 R17 K25 ["Constants"]
       77 CALL                             R16 1 1
       78 GETTABLEKS                       R17 R1 K26 ["PureComponent"]
       80 LOADK                            R19 K27 ["EditTransparencyView"]
       81 NAMECALL                         R17 R17 K28 ["extend"]
       83 CALL                             R17 2 1
       84 GETTABLEKS                       R18 R11 K12 ["Util"]
       86 GETTABLEKS                       R19 R18 K29 ["LayoutOrderIterator"]
       88 DUPCLOSURE                       R20 K30 [PROTO_1]
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R20 R17 K31 ["init"]
       92 DUPCLOSURE                       R20 K32 [PROTO_2]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R20 R17 K33 ["render"]
       98 MOVE                             R20 R13
       99 DUPTABLE                         R21 K35 [{"LuaMeshEditingModuleContext", "Stylizer", "EditingItemContext"}]
      100 SETTABLEKS                       R3 R21 K9 ["LuaMeshEditingModuleContext"]
      102 GETTABLEKS                       R22 R12 K34 ["Stylizer"]
      104 SETTABLEKS                       R22 R21 K34 ["Stylizer"]
      106 SETTABLEKS                       R10 R21 K19 ["EditingItemContext"]
      108 CALL                             R20 1 1
      109 MOVE                             R21 R17
      110 CALL                             R20 1 1
      111 MOVE                             R17 R20
      112 RETURN                           R17 1
